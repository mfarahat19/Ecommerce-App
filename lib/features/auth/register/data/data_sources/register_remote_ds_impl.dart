import 'package:ecommerce_app/core/apis/api_manager.dart';
import 'package:ecommerce_app/features/auth/login/domain/entities/user_entity.dart';
import 'package:ecommerce_app/features/auth/register/data/data_sources/reomte/register_remote_ds.dart';

class RegisterRemoteDsImpl implements RegisterRemoteDS {
  ApiManager apiManager;
  RegisterRemoteDsImpl(this.apiManager);

  @override
  Future<bool> register(UserEntity user) => apiManager.register(user: user);
}
