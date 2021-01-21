# Victoria

This project aimed at developing an mobile application that mimicking Central Bank Digital Currency, we would like to study the feasibility and technical design of CBDC if it were to be implemented in Hong Kong. Therefore, we create an Minimal Viable Product (MVP) mimicking CBDC wallet.

This project was built on <a href="https://flutter.dev/?gclid=CjwKCAiA6aSABhApEiwA6Cbm_7PgB0T5hkRn1noadXlxn3OH5lmWib2qB6nnorXO_bZXZ2KDk2zEvRoCZ1oQAvD_BwE&gclsrc=aw.ds">Flutter</a>, which is an open-source UI software development kit. Our idea is to provide a electronic wallet for users to access their CBDC acccount and do conversion and p2p lending.

Victoria is integrated with <a href="https://aws.amazon.com/lambda/">Lambda </a>, prior to be interacted using API Gateway. All API for the project are created by Node.js and <a href ="https://aws.amazon.com/dynamodb/">DynamoDB</a> was selected to process data to-be-handled by a supposedly DLT network.

![螢幕截圖 2021-01-21 下午10 11 50](https://user-images.githubusercontent.com/67068792/105362299-b2ef9580-5c35-11eb-8d63-5506ff9744c2.png)
![螢幕截圖 2021-01-21 下午10 16 43](https://user-images.githubusercontent.com/67068792/105362927-707a8880-5c36-11eb-945c-9ddbcdf6d929.png)
![螢幕截圖 2021-01-21 下午10 18 18](https://user-images.githubusercontent.com/67068792/105363048-96079200-5c36-11eb-931c-d849580f3ca5.png)
<p> Fig 1.1, Screenshots of Victoria </p>

## How we get inspired
To improvise the evolution of currency, from coin to note, and now to digital currency, we are proposing for the HKMA to adopt CBDC implementation to promote cashless society. As compared to Project Inthathon-LionRock with regards to increase Hong Kong’s financial stability, we are putting strong emphasis on cash to CBDC migration. 

## Features
<ul>
    <li> Account information Checking
    <li> Conversion between HKD and CBDC
    <li> Peer-to-peer payment and account information checking
</ul>

## UI/UX Design
Since our team is short in UIUX designing, we conducted preliminary research on UIUX design considerations and justifications, also referenced to multiple sources for inspirations. We were also puzzled by the padding formatting and alignment in Flutter, since it was designed to cater cross-platform development in different aspect ratio and resolution dimension, we also studied use cases online to troubleshoot inconsistency of interactive elements.

## AWS Lambda
AWS Lambda is the easiest tool on to implement Node.JS based HTTP API. At this experimentation stage, HTTP and RESTful APIs do not have noticeable difference. Having considered HTTP is easier to be tested, especially with GET method on web browser, we have decided to pilot on HTTP API. Each Node.JS function would handle different HTTP request. In all circumstances, response in JSON format would be returned for easier processing.
Here is an example of getting user's account balance from DynamoDB.
``try {
    const data = await documentClient.get(params).promise();
    responseBody = JSON.stringify(data.Item);
    statusCode = 200;
  } catch (err) {
    responseBody = `Unable to get user data`;
    statusCode = 403;
  }

  const response = {
    statusCode: statusCode,
    headers: {
      "myHeader": "test"
    },
    body: responseBody
  };``

## Authentication
As time was a limiting constraint, we did not develop a secure authentication method and it is not our main focus of the project. Therefore, we choose Firebase by Google as the authentication and registration method for our mobile app, which can securely save user data in the cloud and provide the same personalized experience across all of the user's devices. It supports authentication using passwords, and popular federated identity providers like Google, Apple, Microsoft, and more. Fingerprint authentication is also provided, which highly enhances our mobile app’s security.

## App System Architecture
![螢幕截圖 2021-01-21 下午9 12 04](https://user-images.githubusercontent.com/67068792/105358285-eed42c00-5c30-11eb-835a-bada0f67ce98.png)
<p>Fig 1.2, User Journey Map</p>
Conversion will happen based on user request, or when P2P transactions have insufficient fund left in the account so that the interface will prompt user to the conversion page. Either of which, would forward user to account landing page once the action is complete. Conversion is only allowed when user has bind the CBDC wallet with bank accounts. Account information such as balance, recent transactions, can also be viewed.
