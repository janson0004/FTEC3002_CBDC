# Victoria

This project aimed at developing an mobile application that mimicking Central Bank Digital Currency, we would like to study the feasibility and technical design of CBDC if it were to be implemented in Hong Kong. Therefore, we create an Minimal Viable Product (MVP) mimicking CBDC wallet.

This project was built on <a href="https://flutter.dev/?gclid=CjwKCAiA6aSABhApEiwA6Cbm_7PgB0T5hkRn1noadXlxn3OH5lmWib2qB6nnorXO_bZXZ2KDk2zEvRoCZ1oQAvD_BwE&gclsrc=aw.ds">Flutter</a>, which is an open-source UI software development kit. Our idea is to provide a electronic wallet for users to access their CBDC acccount and do conversion and p2p lending.

Victoria is integrated with <a href="https://aws.amazon.com/lambda/">Lambda </a>, prior to be interacted using API Gateway. All API for the project are created by Node.js and <a href ="https://aws.amazon.com/dynamodb/">DynamoDB</a> was selected to process data to-be-handled by a supposedly DLT network.

![螢幕截圖 2021-01-21 下午10 11 50](https://user-images.githubusercontent.com/67068792/105362299-b2ef9580-5c35-11eb-8d63-5506ff9744c2.png)
![螢幕截圖 2021-01-21 下午10 16 43](https://user-images.githubusercontent.com/67068792/105362927-707a8880-5c36-11eb-945c-9ddbcdf6d929.png)
![螢幕截圖 2021-01-21 下午10 18 18](https://user-images.githubusercontent.com/67068792/105363048-96079200-5c36-11eb-931c-d849580f3ca5.png)


## How we get inspired
To improvise the evolution of currency, from coin to note, and now to digital currency, we are proposing for the HKMA to adopt CBDC implementation to promote cashless society. As compared to Project Inthathon-LionRock with regards to increase Hong Kong’s financial stability, we are putting strong emphasis on cash to CBDC migration. 

## Features
<ul>
    <li> Account information Checking
    <li> Conversion between HKD and CBDC
    <li> Peer-to-peer payment and account information checking
</ul>

## App System Architecture
![螢幕截圖 2021-01-21 下午9 12 04](https://user-images.githubusercontent.com/67068792/105358285-eed42c00-5c30-11eb-835a-bada0f67ce98.png)
