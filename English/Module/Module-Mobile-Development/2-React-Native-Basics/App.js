import { StyleSheet, Text, View } from "react-native";

// ServiceCard is a reusable component rendering an individual service entry.
function ServiceCard({ title, description }) {
  // title and description are incoming props supplied by the parent component.
  return (
    <View style={styles.card}>
      <Text style={styles.cardTitle}>{title}</Text>
      <Text>{description}</Text>
    </View>
  );
}

// App is the root entry component for this React Native mobile application.
export default function App() {
  return (
    <View style={styles.container}>
      <Text style={styles.heading}>Laboratory Portal</Text>
      <ServiceCard
        title="Practical Lab Rooms"
        description="Verify scheduled hours before visiting the lab."
      />
    </View>
  );
}

// StyleSheet organizes component styling rules into an optimized, structured object.
const styles = StyleSheet.create({
  container: { flex: 1, padding: 24, justifyContent: "center" },
  heading: { fontSize: 24, fontWeight: "bold", marginBottom: 16 },
  card: { padding: 16, borderWidth: 1, borderColor: "#ccc", borderRadius: 8 },
  cardTitle: { fontSize: 18, fontWeight: "bold", marginBottom: 4 },
});
