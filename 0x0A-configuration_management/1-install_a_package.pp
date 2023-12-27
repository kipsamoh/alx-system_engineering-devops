# puppet de_clarative _script to install flask from _pip3.
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
