import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/User/model/user.dart';
import 'package:platzi_trips_app/User/repository/auth_repository.dart';
import 'package:platzi_trips_app/User/repository/cloud_firestore_repository.dart';


class UserBloc implements Bloc {

  final _authRepository = AuthRepository();

  //Fujo de datos (stream)
  //Stream firebase
  //StreamController si firebase no contara con sus streams
  Stream<FirebaseUser> streamFirebase = FirebaseAuth.instance.onAuthStateChanged;

  //Para acceder al estado del stream (sesion)
  Stream<FirebaseUser> get authStatus => streamFirebase;

  //Casos de uso del modulo user
  //1 Sign in a la aplicación de Google
  Future<FirebaseUser> signIn() {
    return _authRepository.signInFirebase();
  }

  //2 Registrar usuario en la base de datos
  final _cloudFireStoreRepository = CloudFireStoreRepository();
  void updateUserData(User user) => _cloudFireStoreRepository.updateUserDataFirestore(user);

  signOut() {
    _authRepository.signOut();
  }
  
  @override
  void dispose() {
    // TODO: implement dispose
  }

}