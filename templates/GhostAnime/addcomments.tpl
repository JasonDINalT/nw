<div class="bform">
  <div class="dpad">
    <h3 class="bfhead">Добавить комментарий</h3>
	<table class="tableform">
		[not-logged]
		<tr>
			<td class="label">
				Имя:<span class="impot">*</span>
			</td>
			<td><input type="text" name="name" id="name" class="f_input" /></td>
		</tr>
		<tr>
			<td class="label">
				E-Mail:
			</td>
			<td><input type="text" name="mail" id="mail" class="f_input" /></td>
		</tr>
		[/not-logged]
		<tr>
			<td class="label">
				Комментарий:
			</td>
			<td class="editorcomm">{editor}</td>
		</tr>
			[question]
			<tr>
				<td class="label">
					Вопрос:
				</td>
				<td>
					<div>{question}</div>
				</td>
			</tr>
			<tr>
				<td class="label">
					Ответ:<span class="impot">*</span>
				</td>
				<td>
					<div><input type="text" name="question_answer" id="question_answer" class="f_input" /></div>
				</td>
			</tr>
			[/question]
		[sec_code]
		<tr>
			<td class="label">
				Введите код: <span class="impot">*</span>
			</td>
			<td>
				<div>{sec_code}</div>
				<div><input type="text" name="sec_code" id="sec_code" style="width:115px" class="f_input" /></div>
			</td>
		</tr>
		[/sec_code]
		[recaptcha]
		<tr>
			<td class="label">
				Введите два слова, показанных на изображении: <span class="impot">*</span>
			</td>
			<td>
				<div>{recaptcha}</div>
			</td>
		</tr>
		[/recaptcha]
         <tr>
         	<td colspan="2"><button type="submit" name="submit" class="fbutton"><span>Добавить комментарий</span></button></td>
      	</tr>
	</table>
  </div>
</div>