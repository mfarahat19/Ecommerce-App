import 'package:ecommerce_app/features/auth/login/domain/entities/user_entity.dart';
import 'package:ecommerce_app/features/auth/register/data/data_sources/reomte/register_remote_ds.dart';
import 'package:ecommerce_app/features/auth/register/domain/repositories/register_repo.dart';

class RegisterRepoImpl implements RegisterRepo {
  RegisterRemoteDS repo;
  RegisterRepoImpl(this.repo);

  @override
  Future<bool> register(UserEntity user) => repo.register(user);
}
