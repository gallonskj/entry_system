# Generated by Django 2.2 on 2021-03-05 12:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('inpatients', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='DMedicalAdvice',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('medical_name', models.CharField(blank=True, max_length=40, null=True)),
                ('type', models.IntegerField(blank=True, null=True)),
            ],
            options={
                'db_table': 'd_medical_advice',
                'managed': False,
            },
        ),
    ]