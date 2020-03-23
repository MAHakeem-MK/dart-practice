abstract class Command {
  void execute();
  void unExecute();
}

class AdderCommand implements Command {
  int value;
  AdderCommand(this.value);
  @override
  void execute() {
    if (value != null) {
      value++;
    }
  }

  @override
  void unExecute() {
    if (value != null) {
      value--;
    }
  }

  @override
  String toString() {
    return value.toString();
  }
}

class Invoker {
  Command _command;
  set command(Command command) => _command = command;
  void doAction() {
    _command?.execute();
  }

  void undoAction() {
    _command?.unExecute();
  }
}

