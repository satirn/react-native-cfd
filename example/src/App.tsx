import * as React from 'react';
import {Button, StyleSheet, Text, View} from 'react-native';
import * as cfd from 'react-native-cfd';

const ENTROPY =
  '715cae55a5eb07d8d8d787040fdb4fea47c438ee678bbd58417ab996cd2a3a9e';

export default function App() {
  const [result, setResult] = React.useState<string | undefined>();

  const onPress = async () => {
    // @ts-ignore
    console.time('createKeyPair');

    const response = await cfd.ConvertEntropyToMnemonic({
      entropy: ENTROPY,
      language: 'en',
    });

    console.log(response);
    // @ts-ignore
    console.timeEnd('createKeyPair');
  };

  return (
    <View style={styles.container}>
      <Button title="CreateKeyPair" color="#841584" onPress={onPress} />
      <Text>{result}</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  box: {
    width: 60,
    height: 60,
    marginVertical: 20,
  },
});
