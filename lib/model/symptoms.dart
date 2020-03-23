import 'package:covid/model/symptom.dart';

class SymptomDAO {

  static final List<Symptom> symptoms = [
    const Symptom (
        id: "1",
        name: "Febre",
        description: "Descrição do sintoma",
        image: "assets/images/fever.png"
    ),
    const Symptom (
        id: "2",
        name: "Coriza",
        description: "Descrição do sintoma",
        image: "assets/images/fever.png"
    ),
    const Symptom (
        id: "3",
        name: "Coriza",
        description: "Descrição do sintoma",
        image: "assets/images/fever.png"
    ),
    const Symptom (
        id: "4",
        name: "Coriza",
        description: "Descrição do sintoma",
        image: "assets/images/fever.png"
    ),
    const Symptom (
        id: "5",
        name: "Coriza",
        description: "Descrição do sintoma",
        image: "assets/images/fever.png"
    )
  ];

  static Symptom getSymptomById(id) {
    return symptoms
        .where((s) => s.id == id)
        .first;
  }
}