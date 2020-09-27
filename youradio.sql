CREATE DATABASE IF NOT EXISTS youradio;
USE youradio;

-- create countries table
CREATE TABLE countries (
id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
code varchar(2) NOT NULL,
name varchar(100) NOT NULL
);

INSERT INTO countries VALUES (null, 'AF', 'Afghanistan');
INSERT INTO countries VALUES (null, 'AL', 'Albania');
INSERT INTO countries VALUES (null, 'DZ', 'Algeria');
INSERT INTO countries VALUES (null, 'DS', 'American Samoa');
INSERT INTO countries VALUES (null, 'AD', 'Andorra');
INSERT INTO countries VALUES (null, 'AO', 'Angola');
INSERT INTO countries VALUES (null, 'AI', 'Anguilla');
INSERT INTO countries VALUES (null, 'AQ', 'Antarctica');
INSERT INTO countries VALUES (null, 'AG', 'Antigua and Barbuda');
INSERT INTO countries VALUES (null, 'AR', 'Argentina');
INSERT INTO countries VALUES (null, 'AM', 'Armenia');
INSERT INTO countries VALUES (null, 'AW', 'Aruba');
INSERT INTO countries VALUES (null, 'AU', 'Australia');
INSERT INTO countries VALUES (null, 'AT', 'Austria');
INSERT INTO countries VALUES (null, 'AZ', 'Azerbaijan');
INSERT INTO countries VALUES (null, 'BS', 'Bahamas');
INSERT INTO countries VALUES (null, 'BH', 'Bahrain');
INSERT INTO countries VALUES (null, 'BD', 'Bangladesh');
INSERT INTO countries VALUES (null, 'BB', 'Barbados');
INSERT INTO countries VALUES (null, 'BY', 'Belarus');
INSERT INTO countries VALUES (null, 'BE', 'Belgium');
INSERT INTO countries VALUES (null, 'BZ', 'Belize');
INSERT INTO countries VALUES (null, 'BJ', 'Benin');
INSERT INTO countries VALUES (null, 'BM', 'Bermuda');
INSERT INTO countries VALUES (null, 'BT', 'Bhutan');
INSERT INTO countries VALUES (null, 'BO', 'Bolivia');
INSERT INTO countries VALUES (null, 'BA', 'Bosnia and Herzegovina');
INSERT INTO countries VALUES (null, 'BW', 'Botswana');
INSERT INTO countries VALUES (null, 'BV', 'Bouvet Island');
INSERT INTO countries VALUES (null, 'BR', 'Brazil');
INSERT INTO countries VALUES (null, 'IO', 'British Indian Ocean Territory');
INSERT INTO countries VALUES (null, 'BN', 'Brunei Darussalam');
INSERT INTO countries VALUES (null, 'BG', 'Bulgaria');
INSERT INTO countries VALUES (null, 'BF', 'Burkina Faso');
INSERT INTO countries VALUES (null, 'BI', 'Burundi');
INSERT INTO countries VALUES (null, 'KH', 'Cambodia');
INSERT INTO countries VALUES (null, 'CM', 'Cameroon');
INSERT INTO countries VALUES (null, 'CA', 'Canada');
INSERT INTO countries VALUES (null, 'CV', 'Cape Verde');
INSERT INTO countries VALUES (null, 'KY', 'Cayman Islands');
INSERT INTO countries VALUES (null, 'CF', 'Central African Republic');
INSERT INTO countries VALUES (null, 'TD', 'Chad');
INSERT INTO countries VALUES (null, 'CL', 'Chile');
INSERT INTO countries VALUES (null, 'CN', 'China');
INSERT INTO countries VALUES (null, 'CX', 'Christmas Island');
INSERT INTO countries VALUES (null, 'CC', 'Cocos (Keeling) Islands');
INSERT INTO countries VALUES (null, 'CO', 'Colombia');
INSERT INTO countries VALUES (null, 'KM', 'Comoros');
INSERT INTO countries VALUES (null, 'CD', 'Democratic Republic of the Congo');
INSERT INTO countries VALUES (null, 'CG', 'Republic of Congo');
INSERT INTO countries VALUES (null, 'CK', 'Cook Islands');
INSERT INTO countries VALUES (null, 'CR', 'Costa Rica');
INSERT INTO countries VALUES (null, 'HR', 'Croatia (Hrvatska)');
INSERT INTO countries VALUES (null, 'CU', 'Cuba');
INSERT INTO countries VALUES (null, 'CY', 'Cyprus');
INSERT INTO countries VALUES (null, 'CZ', 'Czech Republic');
INSERT INTO countries VALUES (null, 'DK', 'Denmark');
INSERT INTO countries VALUES (null, 'DJ', 'Djibouti');
INSERT INTO countries VALUES (null, 'DM', 'Dominica');
INSERT INTO countries VALUES (null, 'DO', 'Dominican Republic');
INSERT INTO countries VALUES (null, 'TP', 'East Timor');
INSERT INTO countries VALUES (null, 'EC', 'Ecuador');
INSERT INTO countries VALUES (null, 'EG', 'Egypt');
INSERT INTO countries VALUES (null, 'SV', 'El Salvador');
INSERT INTO countries VALUES (null, 'GQ', 'Equatorial Guinea');
INSERT INTO countries VALUES (null, 'ER', 'Eritrea');
INSERT INTO countries VALUES (null, 'EE', 'Estonia');
INSERT INTO countries VALUES (null, 'ET', 'Ethiopia');
INSERT INTO countries VALUES (null, 'FK', 'Falkland Islands (Malvinas)');
INSERT INTO countries VALUES (null, 'FO', 'Faroe Islands');
INSERT INTO countries VALUES (null, 'FJ', 'Fiji');
INSERT INTO countries VALUES (null, 'FI', 'Finland');
INSERT INTO countries VALUES (null, 'FR', 'France');
INSERT INTO countries VALUES (null, 'FX', 'France, Metropolitan');
INSERT INTO countries VALUES (null, 'GF', 'French Guiana');
INSERT INTO countries VALUES (null, 'PF', 'French Polynesia');
INSERT INTO countries VALUES (null, 'TF', 'French Southern Territories');
INSERT INTO countries VALUES (null, 'GA', 'Gabon');
INSERT INTO countries VALUES (null, 'GM', 'Gambia');
INSERT INTO countries VALUES (null, 'GE', 'Georgia');
INSERT INTO countries VALUES (null, 'DE', 'Germany');
INSERT INTO countries VALUES (null, 'GH', 'Ghana');
INSERT INTO countries VALUES (null, 'GI', 'Gibraltar');
INSERT INTO countries VALUES (null, 'GK', 'Guernsey');
INSERT INTO countries VALUES (null, 'GR', 'Greece');
INSERT INTO countries VALUES (null, 'GL', 'Greenland');
INSERT INTO countries VALUES (null, 'GD', 'Grenada');
INSERT INTO countries VALUES (null, 'GP', 'Guadeloupe');
INSERT INTO countries VALUES (null, 'GU', 'Guam');
INSERT INTO countries VALUES (null, 'GT', 'Guatemala');
INSERT INTO countries VALUES (null, 'GN', 'Guinea');
INSERT INTO countries VALUES (null, 'GW', 'Guinea-Bissau');
INSERT INTO countries VALUES (null, 'GY', 'Guyana');
INSERT INTO countries VALUES (null, 'HT', 'Haiti');
INSERT INTO countries VALUES (null, 'HM', 'Heard and Mc Donald Islands');
INSERT INTO countries VALUES (null, 'HN', 'Honduras');
INSERT INTO countries VALUES (null, 'HK', 'Hong Kong');
INSERT INTO countries VALUES (null, 'HU', 'Hungary');
INSERT INTO countries VALUES (null, 'IS', 'Iceland');
INSERT INTO countries VALUES (null, 'IN', 'India');
INSERT INTO countries VALUES (null, 'IM', 'Isle of Man');
INSERT INTO countries VALUES (null, 'ID', 'Indonesia');
INSERT INTO countries VALUES (null, 'IR', 'Iran (Islamic Republic of)');
INSERT INTO countries VALUES (null, 'IQ', 'Iraq');
INSERT INTO countries VALUES (null, 'IE', 'Ireland');
INSERT INTO countries VALUES (null, 'IL', 'Israel');
INSERT INTO countries VALUES (null, 'IT', 'Italy');
INSERT INTO countries VALUES (null, 'CI', 'Ivory Coast');
INSERT INTO countries VALUES (null, 'JE', 'Jersey');
INSERT INTO countries VALUES (null, 'JM', 'Jamaica');
INSERT INTO countries VALUES (null, 'JP', 'Japan');
INSERT INTO countries VALUES (null, 'JO', 'Jordan');
INSERT INTO countries VALUES (null, 'KZ', 'Kazakhstan');
INSERT INTO countries VALUES (null, 'KE', 'Kenya');
INSERT INTO countries VALUES (null, 'KI', 'Kiribati');
INSERT INTO countries VALUES (null, 'KP', 'Korea, Democratic People''s Republic of');
INSERT INTO countries VALUES (null, 'KR', 'Korea, Republic of');
INSERT INTO countries VALUES (null, 'XK', 'Kosovo');
INSERT INTO countries VALUES (null, 'KW', 'Kuwait');
INSERT INTO countries VALUES (null, 'KG', 'Kyrgyzstan');
INSERT INTO countries VALUES (null, 'LA', 'Lao People''s Democratic Republic');
INSERT INTO countries VALUES (null, 'LV', 'Latvia');
INSERT INTO countries VALUES (null, 'LB', 'Lebanon');
INSERT INTO countries VALUES (null, 'LS', 'Lesotho');
INSERT INTO countries VALUES (null, 'LR', 'Liberia');
INSERT INTO countries VALUES (null, 'LY', 'Libyan Arab Jamahiriya');
INSERT INTO countries VALUES (null, 'LI', 'Liechtenstein');
INSERT INTO countries VALUES (null, 'LT', 'Lithuania');
INSERT INTO countries VALUES (null, 'LU', 'Luxembourg');
INSERT INTO countries VALUES (null, 'MO', 'Macau');
INSERT INTO countries VALUES (null, 'MK', 'North Macedonia');
INSERT INTO countries VALUES (null, 'MG', 'Madagascar');
INSERT INTO countries VALUES (null, 'MW', 'Malawi');
INSERT INTO countries VALUES (null, 'MY', 'Malaysia');
INSERT INTO countries VALUES (null, 'MV', 'Maldives');
INSERT INTO countries VALUES (null, 'ML', 'Mali');
INSERT INTO countries VALUES (null, 'MT', 'Malta');
INSERT INTO countries VALUES (null, 'MH', 'Marshall Islands');
INSERT INTO countries VALUES (null, 'MQ', 'Martinique');
INSERT INTO countries VALUES (null, 'MR', 'Mauritania');
INSERT INTO countries VALUES (null, 'MU', 'Mauritius');
INSERT INTO countries VALUES (null, 'TY', 'Mayotte');
INSERT INTO countries VALUES (null, 'MX', 'Mexico');
INSERT INTO countries VALUES (null, 'FM', 'Micronesia, Federated States of');
INSERT INTO countries VALUES (null, 'MD', 'Moldova, Republic of');
INSERT INTO countries VALUES (null, 'MC', 'Monaco');
INSERT INTO countries VALUES (null, 'MN', 'Mongolia');
INSERT INTO countries VALUES (null, 'ME', 'Montenegro');
INSERT INTO countries VALUES (null, 'MS', 'Montserrat');
INSERT INTO countries VALUES (null, 'MA', 'Morocco');
INSERT INTO countries VALUES (null, 'MZ', 'Mozambique');
INSERT INTO countries VALUES (null, 'MM', 'Myanmar');
INSERT INTO countries VALUES (null, 'NA', 'Namibia');
INSERT INTO countries VALUES (null, 'NR', 'Nauru');
INSERT INTO countries VALUES (null, 'NP', 'Nepal');
INSERT INTO countries VALUES (null, 'NL', 'Netherlands');
INSERT INTO countries VALUES (null, 'AN', 'Netherlands Antilles');
INSERT INTO countries VALUES (null, 'NC', 'New Caledonia');
INSERT INTO countries VALUES (null, 'NZ', 'New Zealand');
INSERT INTO countries VALUES (null, 'NI', 'Nicaragua');
INSERT INTO countries VALUES (null, 'NE', 'Niger');
INSERT INTO countries VALUES (null, 'NG', 'Nigeria');
INSERT INTO countries VALUES (null, 'NU', 'Niue');
INSERT INTO countries VALUES (null, 'NF', 'Norfolk Island');
INSERT INTO countries VALUES (null, 'MP', 'Northern Mariana Islands');
INSERT INTO countries VALUES (null, 'NO', 'Norway');
INSERT INTO countries VALUES (null, 'OM', 'Oman');
INSERT INTO countries VALUES (null, 'PK', 'Pakistan');
INSERT INTO countries VALUES (null, 'PW', 'Palau');
INSERT INTO countries VALUES (null, 'PS', 'Palestine');
INSERT INTO countries VALUES (null, 'PA', 'Panama');
INSERT INTO countries VALUES (null, 'PG', 'Papua New Guinea');
INSERT INTO countries VALUES (null, 'PY', 'Paraguay');
INSERT INTO countries VALUES (null, 'PE', 'Peru');
INSERT INTO countries VALUES (null, 'PH', 'Philippines');
INSERT INTO countries VALUES (null, 'PN', 'Pitcairn');
INSERT INTO countries VALUES (null, 'PL', 'Poland');
INSERT INTO countries VALUES (null, 'PT', 'Portugal');
INSERT INTO countries VALUES (null, 'PR', 'Puerto Rico');
INSERT INTO countries VALUES (null, 'QA', 'Qatar');
INSERT INTO countries VALUES (null, 'RE', 'Reunion');
INSERT INTO countries VALUES (null, 'RO', 'Romania');
INSERT INTO countries VALUES (null, 'RU', 'Russian Federation');
INSERT INTO countries VALUES (null, 'RW', 'Rwanda');
INSERT INTO countries VALUES (null, 'KN', 'Saint Kitts and Nevis');
INSERT INTO countries VALUES (null, 'LC', 'Saint Lucia');
INSERT INTO countries VALUES (null, 'VC', 'Saint Vincent and the Grenadines');
INSERT INTO countries VALUES (null, 'WS', 'Samoa');
INSERT INTO countries VALUES (null, 'SM', 'San Marino');
INSERT INTO countries VALUES (null, 'ST', 'Sao Tome and Principe');
INSERT INTO countries VALUES (null, 'SA', 'Saudi Arabia');
INSERT INTO countries VALUES (null, 'SN', 'Senegal');
INSERT INTO countries VALUES (null, 'RS', 'Serbia');
INSERT INTO countries VALUES (null, 'SC', 'Seychelles');
INSERT INTO countries VALUES (null, 'SL', 'Sierra Leone');
INSERT INTO countries VALUES (null, 'SG', 'Singapore');
INSERT INTO countries VALUES (null, 'SK', 'Slovakia');
INSERT INTO countries VALUES (null, 'SI', 'Slovenia');
INSERT INTO countries VALUES (null, 'SB', 'Solomon Islands');
INSERT INTO countries VALUES (null, 'SO', 'Somalia');
INSERT INTO countries VALUES (null, 'ZA', 'South Africa');
INSERT INTO countries VALUES (null, 'GS', 'South Georgia South Sandwich Islands');
INSERT INTO countries VALUES (null, 'SS', 'South Sudan');
INSERT INTO countries VALUES (null, 'ES', 'Spain');
INSERT INTO countries VALUES (null, 'LK', 'Sri Lanka');
INSERT INTO countries VALUES (null, 'SH', 'St. Helena');
INSERT INTO countries VALUES (null, 'PM', 'St. Pierre and Miquelon');
INSERT INTO countries VALUES (null, 'SD', 'Sudan');
INSERT INTO countries VALUES (null, 'SR', 'Suriname');
INSERT INTO countries VALUES (null, 'SJ', 'Svalbard and Jan Mayen Islands');
INSERT INTO countries VALUES (null, 'SZ', 'Swaziland');
INSERT INTO countries VALUES (null, 'SE', 'Sweden');
INSERT INTO countries VALUES (null, 'CH', 'Switzerland');
INSERT INTO countries VALUES (null, 'SY', 'Syrian Arab Republic');
INSERT INTO countries VALUES (null, 'TW', 'Taiwan');
INSERT INTO countries VALUES (null, 'TJ', 'Tajikistan');
INSERT INTO countries VALUES (null, 'TZ', 'Tanzania, United Republic of');
INSERT INTO countries VALUES (null, 'TH', 'Thailand');
INSERT INTO countries VALUES (null, 'TG', 'Togo');
INSERT INTO countries VALUES (null, 'TK', 'Tokelau');
INSERT INTO countries VALUES (null, 'TO', 'Tonga');
INSERT INTO countries VALUES (null, 'TT', 'Trinidad and Tobago');
INSERT INTO countries VALUES (null, 'TN', 'Tunisia');
INSERT INTO countries VALUES (null, 'TR', 'Turkey');
INSERT INTO countries VALUES (null, 'TM', 'Turkmenistan');
INSERT INTO countries VALUES (null, 'TC', 'Turks and Caicos Islands');
INSERT INTO countries VALUES (null, 'TV', 'Tuvalu');
INSERT INTO countries VALUES (null, 'UG', 'Uganda');
INSERT INTO countries VALUES (null, 'UA', 'Ukraine');
INSERT INTO countries VALUES (null, 'AE', 'United Arab Emirates');
INSERT INTO countries VALUES (null, 'GB', 'United Kingdom');
INSERT INTO countries VALUES (null, 'US', 'United States');
INSERT INTO countries VALUES (null, 'UM', 'United States minor outlying islands');
INSERT INTO countries VALUES (null, 'UY', 'Uruguay');
INSERT INTO countries VALUES (null, 'UZ', 'Uzbekistan');
INSERT INTO countries VALUES (null, 'VU', 'Vanuatu');
INSERT INTO countries VALUES (null, 'VA', 'Vatican City State');
INSERT INTO countries VALUES (null, 'VE', 'Venezuela');
INSERT INTO countries VALUES (null, 'VN', 'Vietnam');
INSERT INTO countries VALUES (null, 'VG', 'Virgin Islands (British)');
INSERT INTO countries VALUES (null, 'VI', 'Virgin Islands (U.S.)');
INSERT INTO countries VALUES (null, 'WF', 'Wallis and Futuna Islands');
INSERT INTO countries VALUES (null, 'EH', 'Western Sahara');
INSERT INTO countries VALUES (null, 'YE', 'Yemen');
INSERT INTO countries VALUES (null, 'ZM', 'Zambia');
INSERT INTO countries VALUES (null, 'ZW', 'Zimbabwe');

-- create languages table
CREATE TABLE languages (
  id int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name varchar(49) NOT NULL,
  `iso_639-1` varchar(2) NOT NULL
);

INSERT INTO languages VALUES(1, 'English', 'en');
INSERT INTO languages VALUES(2, 'Afar', 'aa');
INSERT INTO languages VALUES(3, 'Abkhazian', 'ab');
INSERT INTO languages VALUES(4, 'Afrikaans', 'af');
INSERT INTO languages VALUES(5, 'Amharic', 'am');
INSERT INTO languages VALUES(6, 'Arabic', 'ar');
INSERT INTO languages VALUES(7, 'Assamese', 'as');
INSERT INTO languages VALUES(8, 'Aymara', 'ay');
INSERT INTO languages VALUES(9, 'Azerbaijani', 'az');
INSERT INTO languages VALUES(10, 'Bashkir', 'ba');
INSERT INTO languages VALUES(11, 'Belarusian', 'be');
INSERT INTO languages VALUES(12, 'Bulgarian', 'bg');
INSERT INTO languages VALUES(13, 'Bihari', 'bh');
INSERT INTO languages VALUES(14, 'Bislama', 'bi');
INSERT INTO languages VALUES(15, 'Bengali/Bangla', 'bn');
INSERT INTO languages VALUES(16, 'Tibetan', 'bo');
INSERT INTO languages VALUES(17, 'Breton', 'br');
INSERT INTO languages VALUES(18, 'Catalan', 'ca');
INSERT INTO languages VALUES(19, 'Corsican', 'co');
INSERT INTO languages VALUES(20, 'Czech', 'cs');
INSERT INTO languages VALUES(21, 'Welsh', 'cy');
INSERT INTO languages VALUES(22, 'Danish', 'da');
INSERT INTO languages VALUES(23, 'German', 'de');
INSERT INTO languages VALUES(24, 'Bhutani', 'dz');
INSERT INTO languages VALUES(25, 'Greek', 'el');
INSERT INTO languages VALUES(26, 'Esperanto', 'eo');
INSERT INTO languages VALUES(27, 'Spanish', 'es');
INSERT INTO languages VALUES(28, 'Estonian', 'et');
INSERT INTO languages VALUES(29, 'Basque', 'eu');
INSERT INTO languages VALUES(30, 'Persian', 'fa');
INSERT INTO languages VALUES(31, 'Finnish', 'fi');
INSERT INTO languages VALUES(32, 'Fiji', 'fj');
INSERT INTO languages VALUES(33, 'Faeroese', 'fo');
INSERT INTO languages VALUES(34, 'French', 'fr');
INSERT INTO languages VALUES(35, 'Frisian', 'fy');
INSERT INTO languages VALUES(36, 'Irish', 'ga');
INSERT INTO languages VALUES(37, 'Scots/Gaelic', 'gd');
INSERT INTO languages VALUES(38, 'Galician', 'gl');
INSERT INTO languages VALUES(39, 'Guarani', 'gn');
INSERT INTO languages VALUES(40, 'Gujarati', 'gu');
INSERT INTO languages VALUES(41, 'Hausa', 'ha');
INSERT INTO languages VALUES(42, 'Hindi', 'hi');
INSERT INTO languages VALUES(43, 'Croatian', 'hr');
INSERT INTO languages VALUES(44, 'Hungarian', 'hu');
INSERT INTO languages VALUES(45, 'Armenian', 'hy');
INSERT INTO languages VALUES(46, 'Interlingua', 'ia');
INSERT INTO languages VALUES(47, 'Interlingue', 'ie');
INSERT INTO languages VALUES(48, 'Inupiak', 'ik');
INSERT INTO languages VALUES(49, 'Indonesian', 'in');
INSERT INTO languages VALUES(50, 'Icelandic', 'is');
INSERT INTO languages VALUES(51, 'Italian', 'it');
INSERT INTO languages VALUES(52, 'Hebrew', 'iw');
INSERT INTO languages VALUES(53, 'Japanese', 'ja');
INSERT INTO languages VALUES(54, 'Yiddish', 'ji');
INSERT INTO languages VALUES(55, 'Javanese', 'jw');
INSERT INTO languages VALUES(56, 'Georgian', 'ka');
INSERT INTO languages VALUES(57, 'Kazakh', 'kk');
INSERT INTO languages VALUES(58, 'Greenlandic', 'kl');
INSERT INTO languages VALUES(59, 'Cambodian', 'km');
INSERT INTO languages VALUES(60, 'Kannada', 'kn');
INSERT INTO languages VALUES(61, 'Korean', 'ko');
INSERT INTO languages VALUES(62, 'Kashmiri', 'ks');
INSERT INTO languages VALUES(63, 'Kurdish', 'ku');
INSERT INTO languages VALUES(64, 'Kirghiz', 'ky');
INSERT INTO languages VALUES(65, 'Latin', 'la');
INSERT INTO languages VALUES(66, 'Lingala', 'ln');
INSERT INTO languages VALUES(67, 'Laothian', 'lo');
INSERT INTO languages VALUES(68, 'Lithuanian', 'lt');
INSERT INTO languages VALUES(69, 'Latvian/Lettish', 'lv');
INSERT INTO languages VALUES(70, 'Malagasy', 'mg');
INSERT INTO languages VALUES(71, 'Maori', 'mi');
INSERT INTO languages VALUES(72, 'Macedonian', 'mk');
INSERT INTO languages VALUES(73, 'Malayalam', 'ml');
INSERT INTO languages VALUES(74, 'Mongolian', 'mn');
INSERT INTO languages VALUES(75, 'Moldavian', 'mo');
INSERT INTO languages VALUES(76, 'Marathi', 'mr');
INSERT INTO languages VALUES(77, 'Malay', 'ms');
INSERT INTO languages VALUES(78, 'Maltese', 'mt');
INSERT INTO languages VALUES(79, 'Burmese', 'my');
INSERT INTO languages VALUES(80, 'Nauru', 'na');
INSERT INTO languages VALUES(81, 'Nepali', 'ne');
INSERT INTO languages VALUES(82, 'Dutch', 'nl');
INSERT INTO languages VALUES(83, 'Norwegian', 'no');
INSERT INTO languages VALUES(84, 'Occitan', 'oc');
INSERT INTO languages VALUES(85, '(Afan)/Oromoor/Oriya', 'om');
INSERT INTO languages VALUES(86, 'Punjabi', 'pa');
INSERT INTO languages VALUES(87, 'Polish', 'pl');
INSERT INTO languages VALUES(88, 'Pashto/Pushto', 'ps');
INSERT INTO languages VALUES(89, 'Portuguese', 'pt');
INSERT INTO languages VALUES(90, 'Quechua', 'qu');
INSERT INTO languages VALUES(91, 'Rhaeto-Romance', 'rm');
INSERT INTO languages VALUES(92, 'Kirundi', 'rn');
INSERT INTO languages VALUES(93, 'Romanian', 'ro');
INSERT INTO languages VALUES(94, 'Russian', 'ru');
INSERT INTO languages VALUES(95, 'Kinyarwanda', 'rw');
INSERT INTO languages VALUES(96, 'Sanskrit', 'sa');
INSERT INTO languages VALUES(97, 'Sindhi', 'sd');
INSERT INTO languages VALUES(98, 'Sangro', 'sg');
INSERT INTO languages VALUES(99, 'Serbo-Croatian', 'sh');
INSERT INTO languages VALUES(100, 'Singhalese', 'si');
INSERT INTO languages VALUES(101, 'Slovak', 'sk');
INSERT INTO languages VALUES(102, 'Slovenian', 'sl');
INSERT INTO languages VALUES(103, 'Samoan', 'sm');
INSERT INTO languages VALUES(104, 'Shona', 'sn');
INSERT INTO languages VALUES(105, 'Somali', 'so');
INSERT INTO languages VALUES(106, 'Albanian', 'sq');
INSERT INTO languages VALUES(107, 'Serbian', 'sr');
INSERT INTO languages VALUES(108, 'Siswati', 'ss');
INSERT INTO languages VALUES(109, 'Sesotho', 'st');
INSERT INTO languages VALUES(110, 'Sundanese', 'su');
INSERT INTO languages VALUES(111, 'Swedish', 'sv');
INSERT INTO languages VALUES(112, 'Swahili', 'sw');
INSERT INTO languages VALUES(113, 'Tamil', 'ta');
INSERT INTO languages VALUES(114, 'Telugu', 'te');
INSERT INTO languages VALUES(115, 'Tajik', 'tg');
INSERT INTO languages VALUES(116, 'Thai', 'th');
INSERT INTO languages VALUES(117, 'Tigrinya', 'ti');
INSERT INTO languages VALUES(118, 'Turkmen', 'tk');
INSERT INTO languages VALUES(119, 'Tagalog', 'tl');
INSERT INTO languages VALUES(120, 'Setswana', 'tn');
INSERT INTO languages VALUES(121, 'Tonga', 'to');
INSERT INTO languages VALUES(122, 'Turkish', 'tr');
INSERT INTO languages VALUES(123, 'Tsonga', 'ts');
INSERT INTO languages VALUES(124, 'Tatar', 'tt');
INSERT INTO languages VALUES(125, 'Twi', 'tw');
INSERT INTO languages VALUES(126, 'Ukrainian', 'uk');
INSERT INTO languages VALUES(127, 'Urdu', 'ur');
INSERT INTO languages VALUES(128, 'Uzbek', 'uz');
INSERT INTO languages VALUES(129, 'Vietnamese', 'vi');
INSERT INTO languages VALUES(130, 'Volapuk', 'vo');
INSERT INTO languages VALUES(131, 'Wolof', 'wo');
INSERT INTO languages VALUES(132, 'Xhosa', 'xh');
INSERT INTO languages VALUES(133, 'Yoruba', 'yo');
INSERT INTO languages VALUES(134, 'Chinese', 'zh');
INSERT INTO languages VALUES(135, 'Zulu', 'zu');

-- create access level table
create table access_level(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name varchar(25) NOT NULL
);
INSERT INTO access_level VALUES(1, 'admin');
INSERT INTO access_level VALUES(2, 'moderator');
INSERT INTO access_level VALUES(3, 'user');

-- create users table
create table users(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL unique, 
    email VARCHAR(50) NOT NULL unique,
    password VARCHAR(100) NOT NULL,
    updated_at TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
    created_at TIMESTAMP NOT NULL,
    country_id INT NOT NULL,
    access_level_id INT NOT NULL,
    FOREIGN KEY (country_id) references countries(id),
    FOREIGN KEY (access_level_id) references access_level(id)
);
INSERT INTO users VALUES(null, 'admin', 'youssef.abada.x@gmail.com','admin@123',null, null,150, 1);
INSERT INTO users VALUES(null, 'user123', 'youssefabada@outlook.fr','user@123',null, null,150, 3);

-- create categories table
create table categories(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name varchar(30) NOT NULL
);
INSERT INTO categories VALUES(null, 'Arts');
INSERT INTO categories VALUES(null, 'Comedy');
INSERT INTO categories VALUES(null, 'Education');
INSERT INTO categories VALUES(null, 'Kids & Family');
INSERT INTO categories VALUES(null, 'Health');
INSERT INTO categories VALUES(null, 'TV & Film');
INSERT INTO categories VALUES(null, 'Music');
INSERT INTO categories VALUES(null, 'News And Politics');
INSERT INTO categories VALUES(null, 'Religion & Spiritiuality');
INSERT INTO categories VALUES(null, 'Science & Technology');
INSERT INTO categories VALUES(null, 'Sports & Recreation');
INSERT INTO categories VALUES(null, 'Business');
INSERT INTO categories VALUES(null, 'Games & Hobbies');
INSERT INTO categories VALUES(null, 'Society & Culture');


-- create radios table
create table radios(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL, 
    description VARCHAR(250) NOT NULL,
    image VARCHAR(1000) NOT NULL,
    website VARCHAR(1000) NOT NULL,
    stream_url VARCHAR(1000) NOT NULL,
    is_visible INT(1) NOT NULL,
    updated_at TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
    created_at TIMESTAMP NOT NULL,
    category_id INT NOT NULL,
    country_id INT NOT NULL,
    language_id INT NOT NULL,
    FOREIGN KEY (category_id) references categories(id),
    FOREIGN KEY (country_id) references countries(id),
    FOREIGN KEY (language_id) references languages(id)
);

INSERT INTO radios VALUES(null, 'Med Radio', 'ميد راديو تبث مجموعة متكاملة من البرامج السياسية والثقافية والرياضية والاجتماعية والصحية والأسرية والفنية والترفيهية.', 'https://cmsphoto.ww-cdn.com/superstatic/1267467/art/grande/43168112-35716773.jpg', 'https://www.medradio.ma/', 'https://medradio-maroc.ice.infomaniak.ch/medradio-maroc-64.mp3', 1, null, null, 14, 150, 6);
INSERT INTO radios VALUES(null, 'Hit Radio', 'HIT RADIO | 100% HITS', 'https://img0.androidappsapk.co/ggWRU7hX26N0YkpC4bPJuc_u3zmMRZi7YAZ9LAAQ138QMIKMRlC5kvdrfPr-nQLV5g', 'https://new.hitradio.ma/', 'https://hitradio-maroc.ice.infomaniak.ch/hitradio-maroc-128.mp3', 1, null, null, 7, 150, 6);

INSERT INTO radios VALUES(null, 'Virgin Radio', 'Virgin Radio is a French network of FM radio stations dedicated to Rock and Pop music', 'https://cdn-profiles.tunein.com/s10464/images/logog.jpg', 'https://www.virginradio.fr/', 'https://stream.virginradio.fr/virgin.mp3?aw_0_1st.playerid=lgrdrnwsradio-en-lignefr', 1, null, null, 7, 73, 34);


create table likes(
user_id INT NOT NULL,
radio_id INT NOT NULL,
liked_at DATETIME DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (user_id) references users(id),
FOREIGN KEY (radio_id) references radios(id)
);









