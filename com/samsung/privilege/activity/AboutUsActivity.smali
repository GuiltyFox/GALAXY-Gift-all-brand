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

    .line 226
    const-string/jumbo v0, "1212312121"

    iput-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->c:Ljava/lang/String;

    .line 227
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 259
    iget-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->b:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/AboutUsActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/AboutUsActivity$5;-><init>(Lcom/samsung/privilege/activity/AboutUsActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 266
    return-void
.end method

.method private f()V
    .registers 11

    .prologue
    const v9, 0x7f1000c2

    const v8, 0x7f1000c1

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
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1b} :catch_146

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
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2a} :catch_251

    .line 66
    const v0, 0x7f1000c0

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
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_55} :catch_256

    move-object v4, v3

    move v3, v1

    .line 73
    :goto_57
    :try_start_57
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bzbs/data/AppSetting;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_157

    .line 74
    const v0, 0x7f1000bf

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "Galaxy Gift Thailand"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_76} :catch_178

    .line 87
    :cond_76
    :goto_76
    :try_start_76
    sget-object v0, Lcom/bzbs/data/AppSetting;->H:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/bzbs/data/AppSetting;->g:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1bd

    .line 89
    sget-object v0, Lcom/bzbs/data/AppSetting;->H:Ljava/lang/String;

    move-object v1, v0

    .line 97
    :goto_8b
    const v0, 0x7f09003e

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
    const v0, 0x7f1000c5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const v0, 0x7f1000c4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 112
    new-instance v4, Lcom/samsung/privilege/activity/AboutUsActivity$1;

    invoke-direct {v4, p0, v1, v5, v3}, Lcom/samsung/privilege/activity/AboutUsActivity$1;-><init>(Lcom/samsung/privilege/activity/AboutUsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_f0} :catch_24e

    .line 129
    :goto_f0
    :try_start_f0
    sget-object v0, Lcom/bzbs/data/AppSetting;->L:Ljava/lang/String;

    .line 130
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/bzbs/data/AppSetting;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1fc

    .line 131
    sget-object v0, Lcom/bzbs/data/AppSetting;->L:Ljava/lang/String;

    move-object v1, v0

    .line 139
    :goto_105
    const v0, 0x7f090042

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 140
    const-string/jumbo v4, ""

    .line 142
    const v0, 0x7f1000c8

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 145
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    const v0, 0x7f1000c7

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 151
    new-instance v5, Lcom/samsung/privilege/activity/AboutUsActivity$2;

    invoke-direct {v5, p0, v1, v3, v4}, Lcom/samsung/privilege/activity/AboutUsActivity$2;-><init>(Lcom/samsung/privilege/activity/AboutUsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_12c} :catch_24b

    .line 167
    :goto_12c
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23b

    .line 168
    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 169
    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 174
    :goto_145
    return-void

    .line 68
    :catch_146
    move-exception v1

    move-object v1, v0

    move v0, v2

    .line 69
    :goto_149
    const v3, 0x7f09004a

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/AboutUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/privilege/activity/AboutUsActivity;->a(Ljava/lang/String;)V

    move v3, v0

    move-object v4, v1

    goto/16 :goto_57

    .line 75
    :cond_157
    :try_start_157
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bzbs/data/AppSetting;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    .line 76
    const v0, 0x7f1000bf

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "Galaxy Gift Laos"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_76

    .line 82
    :catch_178
    move-exception v0

    goto/16 :goto_76

    .line 77
    :cond_17b
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bzbs/data/AppSetting;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19c

    .line 78
    const v0, 0x7f1000bf

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "Galaxy Gift Cambodia"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_76

    .line 79
    :cond_19c
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bzbs/data/AppSetting;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 80
    const v0, 0x7f1000bf

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "Galaxy Gift Myanmar"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1bb
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_1bb} :catch_178

    goto/16 :goto_76

    .line 90
    :cond_1bd
    :try_start_1bd
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/bzbs/data/AppSetting;->h:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d2

    .line 91
    sget-object v0, Lcom/bzbs/data/AppSetting;->I:Ljava/lang/String;

    move-object v1, v0

    goto/16 :goto_8b

    .line 92
    :cond_1d2
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/bzbs/data/AppSetting;->i:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e7

    .line 93
    sget-object v0, Lcom/bzbs/data/AppSetting;->J:Ljava/lang/String;

    move-object v1, v0

    goto/16 :goto_8b

    .line 94
    :cond_1e7
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/bzbs/data/AppSetting;->j:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25e

    .line 95
    sget-object v0, Lcom/bzbs/data/AppSetting;->K:Ljava/lang/String;
    :try_end_1f9
    .catch Ljava/lang/Exception; {:try_start_1bd .. :try_end_1f9} :catch_24e

    move-object v1, v0

    goto/16 :goto_8b

    .line 132
    :cond_1fc
    :try_start_1fc
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/bzbs/data/AppSetting;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_211

    .line 133
    sget-object v0, Lcom/bzbs/data/AppSetting;->M:Ljava/lang/String;

    move-object v1, v0

    goto/16 :goto_105

    .line 134
    :cond_211
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/bzbs/data/AppSetting;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_226

    .line 135
    sget-object v0, Lcom/bzbs/data/AppSetting;->N:Ljava/lang/String;

    move-object v1, v0

    goto/16 :goto_105

    .line 136
    :cond_226
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/bzbs/data/AppSetting;->j:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25b

    .line 137
    sget-object v0, Lcom/bzbs/data/AppSetting;->O:Ljava/lang/String;
    :try_end_238
    .catch Ljava/lang/Exception; {:try_start_1fc .. :try_end_238} :catch_24b

    move-object v1, v0

    goto/16 :goto_105

    .line 171
    :cond_23b
    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 172
    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_145

    .line 163
    :catch_24b
    move-exception v0

    goto/16 :goto_12c

    .line 124
    :catch_24e
    move-exception v0

    goto/16 :goto_f0

    .line 68
    :catch_251
    move-exception v0

    move v0, v2

    move-object v1, v3

    goto/16 :goto_149

    :catch_256
    move-exception v0

    move v0, v1

    move-object v1, v3

    goto/16 :goto_149

    :cond_25b
    move-object v1, v0

    goto/16 :goto_105

    :cond_25e
    move-object v1, v0

    goto/16 :goto_8b
.end method

.method private g()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 254
    const v0, 0x7f1000c1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    const v0, 0x7f1000c2

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 256
    return-void
.end method


# virtual methods
.method public doAdminCampaign(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 181
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 182
    const-string/jumbo v1, "Enter Campaign ID of Galaxy Gift:"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->a(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 184
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 186
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 187
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->b(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 189
    const-string/jumbo v2, "OK"

    new-instance v3, Lcom/samsung/privilege/activity/AboutUsActivity$3;

    invoke-direct {v3, p0, v1}, Lcom/samsung/privilege/activity/AboutUsActivity$3;-><init>(Lcom/samsung/privilege/activity/AboutUsActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 202
    const-string/jumbo v1, "Cancel"

    new-instance v2, Lcom/samsung/privilege/activity/AboutUsActivity$4;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/AboutUsActivity$4;-><init>(Lcom/samsung/privilege/activity/AboutUsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 209
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->c()Landroid/support/v7/app/AlertDialog;

    .line 210
    return-void
.end method

.method public doBack(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->finish()V

    .line 178
    return-void
.end method

.method public doClick1(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 230
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

    .line 231
    iget-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 232
    invoke-direct {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->g()V

    .line 234
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

    .line 235
    return-void
.end method

.method public doClick2(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 238
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

    .line 239
    iget-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 240
    invoke-direct {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->g()V

    .line 242
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

    .line 243
    return-void
.end method

.method public doClick3(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 246
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

    .line 247
    iget-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 248
    invoke-direct {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->g()V

    .line 250
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

    .line 251
    return-void
.end method

.method public doOpenSource(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 218
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/TermsApacheActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->startActivity(Landroid/content/Intent;)V

    .line 220
    return-void
.end method

.method public doResume(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 276
    :cond_11
    :goto_11
    return-void

    .line 272
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
    .line 213
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->startActivity(Landroid/content/Intent;)V

    .line 215
    return-void
.end method

.method public doTutorial(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity;->b:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/samsung/privilege/util/DialogWelcome;->a(Landroid/content/Context;Landroid/os/Handler;)V

    .line 224
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
    const v0, 0x7f1000be

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
