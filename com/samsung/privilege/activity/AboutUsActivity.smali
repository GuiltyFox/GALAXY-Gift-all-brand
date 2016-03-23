.class public Lcom/samsung/privilege/activity/AboutUsActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AboutUsActivity.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private gHandler:Landroid/os/Handler;

.field private strAdmin:Ljava/lang/String;

.field private strClick:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 31
    const-class v0, Lcom/samsung/privilege/activity/AboutUsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->TAG:Ljava/lang/String;

    .line 252
    const-string/jumbo v0, "1212312121"

    iput-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->strAdmin:Ljava/lang/String;

    .line 253
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->strClick:Ljava/lang/String;

    return-void
.end method

.method private initialLayout()V
    .registers 19

    .prologue
    .line 59
    const-string/jumbo v14, ""

    .line 60
    .local v14, "versionName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 63
    .local v13, "versionCode":I
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    iget-object v14, v15, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    iget v13, v15, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 66
    const v15, 0x7f1000b8

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 67
    .local v10, "textAppVersion":Landroid/widget/TextView;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_51} :catch_186

    .line 73
    .end local v10    # "textAppVersion":Landroid/widget/TextView;
    :goto_51
    :try_start_51
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "402705486466922"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_197

    .line 74
    const v15, 0x7f1000b7

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    const-string/jumbo v16, "Galaxy Gift Thailand"

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_73} :catch_1bb

    .line 87
    :cond_73
    :goto_73
    :try_start_73
    sget-object v4, Lcom/bzbs/data/AppSetting;->EMAIL_PROBLEM_THAI:Ljava/lang/String;

    .line 88
    .local v4, "email":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "402705486466922"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_206

    .line 89
    sget-object v4, Lcom/bzbs/data/AppSetting;->EMAIL_PROBLEM_THAI:Ljava/lang/String;

    .line 97
    :cond_88
    :goto_88
    const v15, 0x7f09005d

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/activity/AboutUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 98
    .local v8, "subject":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 100
    .local v1, "body":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "Version%20Name:%20"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "%2C%20"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "Version%20Code:%20"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    const v15, 0x7f1000bf

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 106
    .local v11, "textEmailTo2":Landroid/widget/TextView;
    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    move-object v5, v4

    .line 109
    .local v5, "email_final":Ljava/lang/String;
    move-object v9, v8

    .line 110
    .local v9, "subject_final":Ljava/lang/String;
    move-object v2, v1

    .line 111
    .local v2, "body_final":Ljava/lang/String;
    const v15, 0x7f1000be

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 112
    .local v6, "layoutEmailTo2":Landroid/widget/RelativeLayout;
    new-instance v15, Lcom/samsung/privilege/activity/AboutUsActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v5, v9, v2}, Lcom/samsung/privilege/activity/AboutUsActivity$1;-><init>(Lcom/samsung/privilege/activity/AboutUsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_f8} :catch_2c1

    .line 129
    .end local v1    # "body":Ljava/lang/String;
    .end local v2    # "body_final":Ljava/lang/String;
    .end local v4    # "email":Ljava/lang/String;
    .end local v5    # "email_final":Ljava/lang/String;
    .end local v6    # "layoutEmailTo2":Landroid/widget/RelativeLayout;
    .end local v8    # "subject":Ljava/lang/String;
    .end local v9    # "subject_final":Ljava/lang/String;
    .end local v11    # "textEmailTo2":Landroid/widget/TextView;
    :goto_f8
    :try_start_f8
    sget-object v4, Lcom/bzbs/data/AppSetting;->EMAIL_PARTNER_THAI:Ljava/lang/String;

    .line 130
    .restart local v4    # "email":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "402705486466922"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_245

    .line 131
    sget-object v4, Lcom/bzbs/data/AppSetting;->EMAIL_PARTNER_THAI:Ljava/lang/String;

    .line 139
    :cond_10d
    :goto_10d
    const v15, 0x7f090062

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/activity/AboutUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 140
    .restart local v8    # "subject":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 142
    .restart local v1    # "body":Ljava/lang/String;
    const v15, 0x7f1000c2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 145
    .local v12, "textJoinContact2":Landroid/widget/TextView;
    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    move-object v5, v4

    .line 148
    .restart local v5    # "email_final":Ljava/lang/String;
    move-object v9, v8

    .line 149
    .restart local v9    # "subject_final":Ljava/lang/String;
    move-object v2, v1

    .line 150
    .restart local v2    # "body_final":Ljava/lang/String;
    const v15, 0x7f1000c1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 151
    .local v7, "layoutJoinContact2":Landroid/widget/RelativeLayout;
    new-instance v15, Lcom/samsung/privilege/activity/AboutUsActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v5, v9, v2}, Lcom/samsung/privilege/activity/AboutUsActivity$2;-><init>(Lcom/samsung/privilege/activity/AboutUsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v15}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_13f} :catch_2be

    .line 167
    .end local v1    # "body":Ljava/lang/String;
    .end local v2    # "body_final":Ljava/lang/String;
    .end local v4    # "email":Ljava/lang/String;
    .end local v5    # "email_final":Ljava/lang/String;
    .end local v7    # "layoutJoinContact2":Landroid/widget/RelativeLayout;
    .end local v8    # "subject":Ljava/lang/String;
    .end local v9    # "subject_final":Ljava/lang/String;
    .end local v12    # "textJoinContact2":Landroid/widget/TextView;
    :goto_13f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/bzbs/data/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_284

    .line 168
    const v15, 0x7f1000b9

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 169
    const v15, 0x7f1000ba

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 170
    const v15, 0x7f1000bb

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 171
    const v15, 0x7f1000bc

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 178
    :goto_185
    return-void

    .line 68
    :catch_186
    move-exception v3

    .line 69
    .local v3, "e":Ljava/lang/Exception;
    const v15, 0x7f09006c

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/activity/AboutUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/samsung/privilege/activity/AboutUsActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_51

    .line 75
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_197
    :try_start_197
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "768830479847872"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1be

    .line 76
    const v15, 0x7f1000b7

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    const-string/jumbo v16, "Galaxy Gift Laos"

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_73

    .line 82
    :catch_1bb
    move-exception v15

    goto/16 :goto_73

    .line 77
    :cond_1be
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "1525635597652592"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1e2

    .line 78
    const v15, 0x7f1000b7

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    const-string/jumbo v16, "Galaxy Gift Cambodia"

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_73

    .line 79
    :cond_1e2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "517155661760483"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_73

    .line 80
    const v15, 0x7f1000b7

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    const-string/jumbo v16, "Galaxy Gift Myanmar"

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_204
    .catch Ljava/lang/Exception; {:try_start_197 .. :try_end_204} :catch_1bb

    goto/16 :goto_73

    .line 90
    .restart local v4    # "email":Ljava/lang/String;
    :cond_206
    :try_start_206
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "768830479847872"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_21b

    .line 91
    sget-object v4, Lcom/bzbs/data/AppSetting;->EMAIL_PROBLEM_LAOS:Ljava/lang/String;

    goto/16 :goto_88

    .line 92
    :cond_21b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "1525635597652592"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_230

    .line 93
    sget-object v4, Lcom/bzbs/data/AppSetting;->EMAIL_PROBLEM_CAMB:Ljava/lang/String;

    goto/16 :goto_88

    .line 94
    :cond_230
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "517155661760483"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_88

    .line 95
    sget-object v4, Lcom/bzbs/data/AppSetting;->EMAIL_PROBLEM_MYAN:Ljava/lang/String;
    :try_end_243
    .catch Ljava/lang/Exception; {:try_start_206 .. :try_end_243} :catch_2c1

    goto/16 :goto_88

    .line 132
    :cond_245
    :try_start_245
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "768830479847872"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_25a

    .line 133
    sget-object v4, Lcom/bzbs/data/AppSetting;->EMAIL_PARTNER_LAOS:Ljava/lang/String;

    goto/16 :goto_10d

    .line 134
    :cond_25a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "1525635597652592"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_26f

    .line 135
    sget-object v4, Lcom/bzbs/data/AppSetting;->EMAIL_PARTNER_CAMB:Ljava/lang/String;

    goto/16 :goto_10d

    .line 136
    :cond_26f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "517155661760483"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10d

    .line 137
    sget-object v4, Lcom/bzbs/data/AppSetting;->EMAIL_PARTNER_MYAN:Ljava/lang/String;
    :try_end_282
    .catch Ljava/lang/Exception; {:try_start_245 .. :try_end_282} :catch_2be

    goto/16 :goto_10d

    .line 173
    .end local v4    # "email":Ljava/lang/String;
    :cond_284
    const v15, 0x7f1000b9

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 174
    const v15, 0x7f1000ba

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 175
    const v15, 0x7f1000bb

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 176
    const v15, 0x7f1000bc

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_185

    .line 163
    :catch_2be
    move-exception v15

    goto/16 :goto_13f

    .line 124
    :catch_2c1
    move-exception v15

    goto/16 :goto_f8
.end method

.method private showAdmin()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 280
    const v0, 0x7f1000b9

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 281
    const v0, 0x7f1000ba

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 282
    const v0, 0x7f1000bb

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 283
    const v0, 0x7f1000bc

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 284
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/AboutUsActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/AboutUsActivity$5;-><init>(Lcom/samsung/privilege/activity/AboutUsActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 294
    return-void
.end method


# virtual methods
.method public doAdminCampaign(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 190
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 191
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const-string/jumbo v2, "Enter Campaign ID of Galaxy Gift:"

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 193
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 195
    .local v1, "input":Landroid/widget/EditText;
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 196
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 198
    const-string/jumbo v2, "OK"

    new-instance v3, Lcom/samsung/privilege/activity/AboutUsActivity$3;

    invoke-direct {v3, p0, v1}, Lcom/samsung/privilege/activity/AboutUsActivity$3;-><init>(Lcom/samsung/privilege/activity/AboutUsActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 210
    const-string/jumbo v2, "Cancel"

    new-instance v3, Lcom/samsung/privilege/activity/AboutUsActivity$4;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/AboutUsActivity$4;-><init>(Lcom/samsung/privilege/activity/AboutUsActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 217
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 218
    return-void
.end method

.method public doAdminServer(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 185
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->startActivity(Landroid/content/Intent;)V

    .line 187
    return-void
.end method

.method public doBack(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->finish()V

    .line 182
    return-void
.end method

.method public doClick1(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->strClick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->strClick:Ljava/lang/String;

    .line 257
    iget-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->strClick:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->strAdmin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 258
    invoke-direct {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->showAdmin()V

    .line 260
    :cond_25
    iget-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "strClick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->strClick:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public doClick2(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->strClick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->strClick:Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->strClick:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->strAdmin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 266
    invoke-direct {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->showAdmin()V

    .line 268
    :cond_25
    iget-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "strClick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->strClick:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public doClick3(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->strClick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->strClick:Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->strClick:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->strAdmin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 274
    invoke-direct {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->showAdmin()V

    .line 276
    :cond_25
    iget-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "strClick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->strClick:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public doOpenSource(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 244
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/TermsApacheActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->startActivity(Landroid/content/Intent;)V

    .line 246
    return-void
.end method

.method public doPointExpire(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 226
    const-string/jumbo v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/AboutUsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 227
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    if-nez v4, :cond_1a

    .line 228
    const v4, 0x7f09024a

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/AboutUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    .line 241
    :cond_19
    :goto_19
    return-void

    .line 232
    :cond_1a
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "tokenBzBs":Ljava/lang/String;
    if-eqz v2, :cond_19

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 234
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/bzbs/data/AppSetting;->WEB_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "Views/Point/Expire.aspx?token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, "url":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/samsung/privilege/activity/PointStatementActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "url"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string/jumbo v4, "enable_webview_back"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 239
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/AboutUsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_19
.end method

.method public doResume(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 304
    :cond_11
    :goto_11
    return-void

    .line 300
    :cond_12
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    goto :goto_11
.end method

.method public doTerms(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 221
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->startActivity(Landroid/content/Intent;)V

    .line 223
    return-void
.end method

.method public doTutorial(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->gHandler:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/samsung/privilege/util/DialogWelcome;->showDialogWelcome(Landroid/content/Context;Landroid/os/Handler;)V

    .line 250
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 41
    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->setContentView(I)V

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->gHandler:Landroid/os/Handler;

    .line 46
    const v0, 0x7f1000b6

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 48
    invoke-direct {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->initialLayout()V

    .line 50
    const-string/jumbo v0, "About Us"

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsScreen(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 56
    return-void
.end method
