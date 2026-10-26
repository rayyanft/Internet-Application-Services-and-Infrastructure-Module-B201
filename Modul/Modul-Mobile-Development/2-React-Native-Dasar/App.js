import { StyleSheet, Text, View } from "react-native";

// ServiceCard adalah komponen yang dapat digunakan kembali untuk satu layanan.
function ServiceCard({ title, description }) {
  // title dan description adalah props (masukan dari komponen induk).
  return (
    <View style={styles.card}>
      <Text style={styles.cardTitle}>{title}</Text>
      <Text>{description}</Text>
    </View>
  );
}

// App adalah fungsi komponen utama pada contoh ini.
export default function App() {
  return (
    <View style={styles.container}>
      <Text style={styles.heading}>Portal Laboratorium</Text>
      <ServiceCard
        title="Ruang Praktikum"
        description="Periksa jadwal sebelum datang."
      />
    </View>
  );
}

// StyleSheet menyimpan aturan tampilan dalam satu objek terstruktur.
const styles = StyleSheet.create({
  container: { flex: 1, padding: 24, justifyContent: "center" },
  heading: { fontSize: 24, fontWeight: "bold", marginBottom: 16 },
  card: { padding: 16, borderWidth: 1, borderRadius: 8 },
  cardTitle: { fontSize: 18, fontWeight: "bold" },
});
