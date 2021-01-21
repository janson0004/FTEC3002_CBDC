# Victoria

This project aimed at developing an mobile application that mimicking Central Bank Digital Currency, we would like to study the feasibility and technical design of CBDC if it were to be implemented in Hong Kong. Therefore, we create an Minimal Viable Product (MVP) mimicking CBDC wallet.

This project was built on <a href="https://flutter.dev/?gclid=CjwKCAiA6aSABhApEiwA6Cbm_7PgB0T5hkRn1noadXlxn3OH5lmWib2qB6nnorXO_bZXZ2KDk2zEvRoCZ1oQAvD_BwE&gclsrc=aw.ds">Flutter</a>, which is an open-source UI software development kit. Our idea is to provide a electronic wallet for users to access their CBDC acccount and do conversion and p2p lending.

Victoria is integrated with <a href="https://aws.amazon.com/lambda/">Lambda </a>, prior to be interacted using API Gateway. All API for the project are created by Node.js and <a href ="https://aws.amazon.com/dynamodb/"> </a> DynamoDB was selected to process data to-be-handled by a supposedly DLT network.
<img src="https://user-images.githubusercontent.com/67068792/105360949-1ed0fe80-5c34-11eb-820c-b749b8d59a36.png" width="100" height="100">
![Screenshot_1606032883](https://user-images.githubusercontent.com/67068792/105360949-1ed0fe80-5c34-11eb-820c-b749b8d59a36.png)
![Screenshot_1606032920](https://user-images.githubusercontent.com/67068792/105360967-24c6df80-5c34-11eb-9776-e371775d8d4a.png)
![Screenshot_1606032938](https://user-images.githubusercontent.com/67068792/105360984-298b9380-5c34-11eb-8c93-98d9e2b4c5df.png)


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
