IPassAStringContaining::visit(Value &value) {

    world().result = StringCalculator().add(std::to_string(value));

}
