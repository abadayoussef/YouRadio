function init() {
    document.getElementById('user').style.display = 'none';
    document.getElementById('fav').style.display = 'none';
    //document.getElementById('main').style.display = 'none';

    const listButtons = ['mainActive', 'favActive', 'userActive'];
    const pages = ['main', 'fav', 'user'];
    listButtons.forEach((btn, i) => {
        document.getElementById(btn).addEventListener('click', (e) => {
            e.target.classList.add('active');
            document.getElementById(pages[i]).style.display = 'block';

            for (let j = 0; j < pages.length; j++) {
                if (j === i) continue;
                document.getElementById(pages[j]).style.display = 'none';
                document.getElementById(listButtons[j]).classList.remove('active');
            }
        })
    })

    document.getElementById("playBtn").addEventListener('click', function (e) {
        let audio = document.getElementById('radioSrc');
        if (audio.paused) {
            audio.play();
            this.innerHTML = '<i class="fas fa-pause"></i>';
        } else {
            audio.pause();
            this.innerHTML = '<i class="fas fa-play"></i>';
        }
    })

    document.getElementById('volume').addEventListener('change', function (e) {
        document.getElementById('radioSrc').volume = +this.value / 100;
    })
}

function getAjaxData(method, url) {
    return new Promise((resolve, reject) => {
        const req = new XMLHttpRequest();
        req.open(method, url);
        req.send();
        req.onload = function () {
            if (this.status === 200) {
                resolve(this.response);
            } else {
                reject(Error(this.statusText));
            }
        }
        req.onerror = function () {
            reject(Error('Network Error'));
        }
    })
}

new Vue({
    el: '#app',
    data: {
        stations: [],
        selectedStation: null
    },
    mounted: function () {
        init();
        getAjaxData('GET', '/api/mostrecent')
            .then(response => JSON.parse(response))
            .then(response => {
                this.stations = response;
                this.selectedStation = this.stations[0];
            })
            .catch(err => console.error(err))
    },
    methods: {
        select: function (key) {
            if (this.selectedStation === null) return '';
            return this.selectedStation[key];
        },
        change: async function (station) {
            if (+station.id != +this.selectedStation.id) {
                let audio = document.getElementById('radioSrc');
                let paused = audio.paused;
                await (this.selectedStation = station);
                if (!paused) {
                    audio.play();
                }
            }
        }
    }
})