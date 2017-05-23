.class public Lcom/samsung/privilege/activity/AboutUsActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AboutUsActivity.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/os/Handler;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


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

    iput-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->a:Ljava/lang/String;

    .line 253
    const-string/jumbo v0, "1212312121"

    iput-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->c:Ljava/lang/String;

    .line 254
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 288
    iget-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->b:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/AboutUsActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/AboutUsActivity$5;-><init>(Lcom/samsung/privilege/activity/AboutUsActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 295
    return-void
.end method

.method private f()V
    .registers 11

    .prologue
    const v9, 0x7f1000be

    const v8, 0x7f1000bd

    const/16 v7, 0x8

    const/4 v2, 0x0

    .line 59
    const-string/jumbo v0, ""

    .line 63
    :try_start_c
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1b} :catch_15d

    .line 64
    :try_start_1b
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2a} :catch_285

    .line 66
    const v0, 0x7f1000bc

    :try_start_2d
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_55} :catch_28a

    move-object v4, v3

    move v3, v1

    .line 73
    :goto_57
    :try_start_57
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "402705486466922"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16e

    .line 74
    const v0, 0x7f1000bb

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "Galaxy Gift Thailand"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_77} :catch_190

    .line 87
    :cond_77
    :goto_77
    :try_start_77
    sget-object v0, Lcom/bzbs/data/AppSetting;->C:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "402705486466922"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d7

    .line 89
    sget-object v0, Lcom/bzbs/data/AppSetting;->C:Ljava/lang/String;

    move-object v1, v0

    .line 97
    :goto_8d
    const v0, 0x7f09004b

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 98
    const-string/jumbo v0, ""

    .line 100
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "Version%20Name:%20"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "%2C%20"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "Version%20Code:%20"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const v0, 0x7f1000c2

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 112
    new-instance v4, Lcom/samsung/privilege/activity/AboutUsActivity$1;

    invoke-direct {v4, p0, v1, v5, v3}, Lcom/samsung/privilege/activity/AboutUsActivity$1;-><init>(Lcom/samsung/privilege/activity/AboutUsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_f2} :catch_282

    .line 129
    :goto_f2
    :try_start_f2
    sget-object v0, Lcom/bzbs/data/AppSetting;->G:Ljava/lang/String;

    .line 130
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "402705486466922"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_219

    .line 131
    sget-object v0, Lcom/bzbs/data/AppSetting;->G:Ljava/lang/String;

    move-object v1, v0

    .line 139
    :goto_108
    const v0, 0x7f09004f

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 140
    const-string/jumbo v4, ""

    .line 142
    const v0, 0x7f1000c6

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 145
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    const v0, 0x7f1000c5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 151
    new-instance v5, Lcom/samsung/privilege/activity/AboutUsActivity$2;

    invoke-direct {v5, p0, v1, v3, v4}, Lcom/samsung/privilege/activity/AboutUsActivity$2;-><init>(Lcom/samsung/privilege/activity/AboutUsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_12f} :catch_27f

    .line 167
    :goto_12f
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25b

    .line 168
    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 169
    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 170
    const v0, 0x7f1000bf

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 171
    const v0, 0x7f1000c0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 178
    :goto_15c
    return-void

    .line 68
    :catch_15d
    move-exception v1

    move-object v1, v0

    move v0, v2

    .line 69
    :goto_160
    const v3, 0x7f090057

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/AboutUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/privilege/activity/AboutUsActivity;->a(Ljava/lang/String;)V

    move v3, v0

    move-object v4, v1

    goto/16 :goto_57

    .line 75
    :cond_16e
    :try_start_16e
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "768830479847872"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_193

    .line 76
    const v0, 0x7f1000bb

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "Galaxy Gift Laos"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_77

    .line 82
    :catch_190
    move-exception v0

    goto/16 :goto_77

    .line 77
    :cond_193
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1525635597652592"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b5

    .line 78
    const v0, 0x7f1000bb

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "Galaxy Gift Cambodia"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_77

    .line 79
    :cond_1b5
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "517155661760483"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 80
    const v0, 0x7f1000bb

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "Galaxy Gift Myanmar"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1d5
    .catch Ljava/lang/Exception; {:try_start_16e .. :try_end_1d5} :catch_190

    goto/16 :goto_77

    .line 90
    :cond_1d7
    :try_start_1d7
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "768830479847872"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ed

    .line 91
    sget-object v0, Lcom/bzbs/data/AppSetting;->D:Ljava/lang/String;

    move-object v1, v0

    goto/16 :goto_8d

    .line 92
    :cond_1ed
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "1525635597652592"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_203

    .line 93
    sget-object v0, Lcom/bzbs/data/AppSetting;->E:Ljava/lang/String;

    move-object v1, v0

    goto/16 :goto_8d

    .line 94
    :cond_203
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "517155661760483"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_292

    .line 95
    sget-object v0, Lcom/bzbs/data/AppSetting;->F:Ljava/lang/String;
    :try_end_216
    .catch Ljava/lang/Exception; {:try_start_1d7 .. :try_end_216} :catch_282

    move-object v1, v0

    goto/16 :goto_8d

    .line 132
    :cond_219
    :try_start_219
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "768830479847872"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22f

    .line 133
    sget-object v0, Lcom/bzbs/data/AppSetting;->H:Ljava/lang/String;

    move-object v1, v0

    goto/16 :goto_108

    .line 134
    :cond_22f
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "1525635597652592"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_245

    .line 135
    sget-object v0, Lcom/bzbs/data/AppSetting;->I:Ljava/lang/String;

    move-object v1, v0

    goto/16 :goto_108

    .line 136
    :cond_245
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "517155661760483"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28f

    .line 137
    sget-object v0, Lcom/bzbs/data/AppSetting;->J:Ljava/lang/String;
    :try_end_258
    .catch Ljava/lang/Exception; {:try_start_219 .. :try_end_258} :catch_27f

    move-object v1, v0

    goto/16 :goto_108

    .line 173
    :cond_25b
    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 174
    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 175
    const v0, 0x7f1000bf

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 176
    const v0, 0x7f1000c0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_15c

    .line 163
    :catch_27f
    move-exception v0

    goto/16 :goto_12f

    .line 124
    :catch_282
    move-exception v0

    goto/16 :goto_f2

    .line 68
    :catch_285
    move-exception v0

    move v0, v2

    move-object v1, v3

    goto/16 :goto_160

    :catch_28a
    move-exception v0

    move v0, v1

    move-object v1, v3

    goto/16 :goto_160

    :cond_28f
    move-object v1, v0

    goto/16 :goto_108

    :cond_292
    move-object v1, v0

    goto/16 :goto_8d
.end method

.method private g()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 281
    const v0, 0x7f1000bd

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 282
    const v0, 0x7f1000be

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 283
    const v0, 0x7f1000bf

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 284
    const v0, 0x7f1000c0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 285
    return-void
.end method


# virtual methods
.method public doAdminCampaign(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 190
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 191
    const-string/jumbo v1, "Enter Campaign ID of Galaxy Gift:"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->a(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 193
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 195
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 196
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->b(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 198
    const-string/jumbo v2, "OK"

    new-instance v3, Lcom/samsung/privilege/activity/AboutUsActivity$3;

    invoke-direct {v3, p0, v1}, Lcom/samsung/privilege/activity/AboutUsActivity$3;-><init>(Lcom/samsung/privilege/activity/AboutUsActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 211
    const-string/jumbo v1, "Cancel"

    new-instance v2, Lcom/samsung/privilege/activity/AboutUsActivity$4;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/AboutUsActivity$4;-><init>(Lcom/samsung/privilege/activity/AboutUsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 218
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->c()Landroid/support/v7/app/AlertDialog;

    .line 219
    return-void
.end method

.method public doAdminServer(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 185
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->startActivity(Landroid/content/Intent;)V

    .line 187
    return-void
.end method

.method public doBack(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->finish()V

    .line 182
    return-void
.end method

.method public doClick1(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->d:Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 259
    invoke-direct {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->g()V

    .line 261
    :cond_25
    iget-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "strClick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public doClick2(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->d:Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 267
    invoke-direct {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->g()V

    .line 269
    :cond_25
    iget-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "strClick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public doClick3(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->d:Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 275
    invoke-direct {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->g()V

    .line 277
    :cond_25
    iget-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "strClick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public doOpenSource(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 245
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/TermsApacheActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 246
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->startActivity(Landroid/content/Intent;)V

    .line 247
    return-void
.end method

.method public doPointExpire(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 227
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 228
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 229
    const v0, 0x7f0900db

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 242
    :cond_19
    :goto_19
    return-void

    .line 233
    :cond_1a
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_19

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->T:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Views/Point/Expire.aspx?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/PointStatementActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string/jumbo v0, "enable_webview_back"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 240
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/AboutUsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_19
.end method

.method public doResume(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 305
    :cond_11
    :goto_11
    return-void

    .line 301
    :cond_12
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    goto :goto_11
.end method

.method public doTerms(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 222
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->startActivity(Landroid/content/Intent;)V

    .line 224
    return-void
.end method

.method public doTutorial(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->b:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/samsung/privilege/util/DialogWelcome;->a(Landroid/content/Context;Landroid/os/Handler;)V

    .line 251
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 41
    const v0, 0x7f04001a

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->setContentView(I)V

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->b:Landroid/os/Handler;

    .line 46
    const v0, 0x7f1000ba

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 48
    invoke-direct {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->f()V

    .line 50
    const-string/jumbo v0, "About Us"

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;)V

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
