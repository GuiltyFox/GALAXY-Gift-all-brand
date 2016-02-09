.class public Lcom/samsung/privilege/activity/RegisterActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;
    }
.end annotation


# static fields
.field static final DATE_DIALOG_ID:I = 0x3e7


# instance fields
.field private final LOGCAT:Ljava/lang/String;

.field private btnMen:Landroid/widget/ImageView;

.field private btnWomen:Landroid/widget/ImageView;

.field private datePickerListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private day:I

.field private edtBD:Landroid/widget/TextView;

.field private edtFName:Landroid/widget/EditText;

.field private edtLName:Landroid/widget/EditText;

.field private gFontDefault:Landroid/graphics/Typeface;

.field private gHandler:Landroid/os/Handler;

.field private gender:I

.field private month:I

.field private paramsData:Ljava/lang/String;

.field pbLoadingProfile:Landroid/widget/ProgressBar;

.field private strGender:Ljava/lang/String;

.field private tvBD:Landroid/widget/TextView;

.field private tvFName:Landroid/widget/TextView;

.field private tvLName:Landroid/widget/TextView;

.field private year:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 38
    const-string v0, "Register"

    iput-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->LOGCAT:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->gender:I

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->strGender:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->paramsData:Ljava/lang/String;

    .line 341
    new-instance v0, Lcom/samsung/privilege/activity/RegisterActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/RegisterActivity$1;-><init>(Lcom/samsung/privilege/activity/RegisterActivity;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->datePickerListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/RegisterActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtBD:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/RegisterActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/samsung/privilege/activity/RegisterActivity;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtFName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/samsung/privilege/activity/RegisterActivity;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtLName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lcom/samsung/privilege/activity/RegisterActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->strGender:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/samsung/privilege/activity/RegisterActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->paramsData:Ljava/lang/String;

    return-object v0
.end method

.method private initialLayout()V
    .registers 4

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RegisterActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->gFontDefault:Landroid/graphics/Typeface;

    .line 98
    const v1, 0x7f070353

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->btnMen:Landroid/widget/ImageView;

    .line 99
    const v1, 0x7f070354

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->btnWomen:Landroid/widget/ImageView;

    .line 100
    const v1, 0x7f070355

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->tvFName:Landroid/widget/TextView;

    .line 101
    const v1, 0x7f070357

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->tvLName:Landroid/widget/TextView;

    .line 102
    const v1, 0x7f070359

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->tvBD:Landroid/widget/TextView;

    .line 103
    const v1, 0x7f070356

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtFName:Landroid/widget/EditText;

    .line 104
    const v1, 0x7f070358

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtLName:Landroid/widget/EditText;

    .line 105
    const v1, 0x7f07035a

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtBD:Landroid/widget/TextView;

    .line 106
    const v1, 0x7f07035b

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 107
    .local v0, "btnRegister":Landroid/widget/Button;
    const v1, 0x7f07035c

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->pbLoadingProfile:Landroid/widget/ProgressBar;

    .line 109
    iget-object v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->tvFName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/RegisterActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 110
    iget-object v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->tvLName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/RegisterActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 111
    iget-object v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->tvBD:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/RegisterActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 112
    iget-object v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtFName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/samsung/privilege/activity/RegisterActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 113
    iget-object v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtLName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/samsung/privilege/activity/RegisterActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 114
    iget-object v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtBD:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/RegisterActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 115
    iget-object v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 117
    iget-object v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->tvFName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 118
    iget-object v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->tvLName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 119
    iget-object v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->tvBD:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 120
    iget-object v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtFName:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextSize(F)V

    .line 121
    iget-object v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtLName:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextSize(F)V

    .line 122
    iget-object v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtBD:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 123
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 125
    iget-object v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->btnMen:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->btnWomen:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RegisterActivity;->setCurrentDateOnView()V

    .line 130
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RegisterActivity;->addListenerOnButton()V

    .line 132
    return-void
.end method

.method private initialParam()V
    .registers 3

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "msg_newbie"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->paramsData:Ljava/lang/String;

    .line 94
    return-void
.end method


# virtual methods
.method public addListenerOnButton()V
    .registers 3

    .prologue
    .line 321
    iget-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtBD:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/privilege/activity/RegisterActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/RegisterActivity$2;-><init>(Lcom/samsung/privilege/activity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    return-void
.end method

.method public doGoToUpdate(Landroid/view/View;)V
    .registers 16
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v12, 0x3e8

    .line 186
    new-instance v0, Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;-><init>(Landroid/content/Context;)V

    .line 187
    .local v0, "cd":Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;
    invoke-virtual {v0}, Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;->isConnectingToInternet()Z

    move-result v8

    if-nez v8, :cond_20

    .line 188
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0a00c1

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/RegisterActivity;->showToast(Ljava/lang/String;)V

    .line 242
    :goto_1f
    return-void

    .line 191
    :cond_20
    iget-object v8, p0, Lcom/samsung/privilege/activity/RegisterActivity;->pbLoadingProfile:Landroid/widget/ProgressBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 192
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "api/profile/me/user?token="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 194
    .local v7, "url":Ljava/lang/String;
    const-string v8, "OAT"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "url= "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v5, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v5}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 196
    .local v5, "paramsRequestParams":Lcom/loopj/android/http/RequestParams;
    iget v8, p0, Lcom/samsung/privilege/activity/RegisterActivity;->gender:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_193

    .line 197
    const-string v8, "gender"

    const-string v9, "female"

    invoke-virtual {v5, v8, v9}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v8, "female"

    iput-object v8, p0, Lcom/samsung/privilege/activity/RegisterActivity;->strGender:Ljava/lang/String;

    .line 199
    const-string v8, "Register"

    const-string v9, "gender female"

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_77
    :goto_77
    iget-object v8, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtBD:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_ca

    .line 207
    iget-object v8, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtBD:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 209
    .local v6, "str_date":Ljava/lang/String;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 210
    .local v1, "date":Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v8, "dd/MM/yyyy"

    invoke-direct {v3, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 212
    .local v3, "formatter":Ljava/text/SimpleDateFormat;
    :try_start_9f
    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_a2
    .catch Ljava/text/ParseException; {:try_start_9f .. :try_end_a2} :catch_1ac

    move-result-object v1

    .line 217
    :goto_a3
    const-string v8, "birthdate"

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    div-long/2addr v9, v12

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v8, "Register"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "birthdate "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .end local v1    # "date":Ljava/util/Date;
    .end local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v6    # "str_date":Ljava/lang/String;
    :cond_ca
    const-string v8, "firstname"

    iget-object v9, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtFName:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v8, "Register"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "firstname "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtFName:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v8, "lastname"

    iget-object v9, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtLName:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v8, "Register"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "lastname "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtLName:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v8, "ShippingFirstName"

    iget-object v9, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtFName:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v8, "Register"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ShippingFirstName "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtFName:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v8, "ShippingLastName"

    iget-object v9, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtLName:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v8, "Register"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ShippingLastName "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtLName:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance v4, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v4}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 239
    .local v4, "myClient":Lcom/loopj/android/http/AsyncHttpClient;
    const v8, 0x1d4c0

    invoke-virtual {v4, v8}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 240
    new-instance v8, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;

    invoke-direct {v8, p0}, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;-><init>(Lcom/samsung/privilege/activity/RegisterActivity;)V

    invoke-virtual {v4, v7, v5, v8}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto/16 :goto_1f

    .line 200
    .end local v4    # "myClient":Lcom/loopj/android/http/AsyncHttpClient;
    :cond_193
    iget v8, p0, Lcom/samsung/privilege/activity/RegisterActivity;->gender:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_77

    .line 201
    const-string v8, "gender"

    const-string v9, "male"

    invoke-virtual {v5, v8, v9}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v8, "male"

    iput-object v8, p0, Lcom/samsung/privilege/activity/RegisterActivity;->strGender:Ljava/lang/String;

    .line 203
    const-string v8, "Register"

    const-string v9, "gender male"

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_77

    .line 213
    .restart local v1    # "date":Ljava/util/Date;
    .restart local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v6    # "str_date":Ljava/lang/String;
    :catch_1ac
    move-exception v2

    .line 214
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_a3
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_8c

    .line 148
    iget-object v3, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtFName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "text_edtFName":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtLName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "text_edtLName":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtBD:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "text_edtBD":Ljava/lang/String;
    iget v3, p0, Lcom/samsung/privilege/activity/RegisterActivity;->gender:I

    if-nez v3, :cond_58

    .line 153
    const-string v3, "Please select gender"

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/RegisterActivity;->showToast(Ljava/lang/String;)V

    .line 182
    .end local v0    # "text_edtBD":Ljava/lang/String;
    .end local v1    # "text_edtFName":Ljava/lang/String;
    .end local v2    # "text_edtLName":Ljava/lang/String;
    :goto_3c
    return-void

    .line 138
    :pswitch_3d
    iget-object v3, p0, Lcom/samsung/privilege/activity/RegisterActivity;->btnMen:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 139
    iget-object v3, p0, Lcom/samsung/privilege/activity/RegisterActivity;->btnWomen:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 140
    iput v4, p0, Lcom/samsung/privilege/activity/RegisterActivity;->gender:I

    goto :goto_3c

    .line 143
    :pswitch_4a
    iget-object v3, p0, Lcom/samsung/privilege/activity/RegisterActivity;->btnMen:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 144
    iget-object v3, p0, Lcom/samsung/privilege/activity/RegisterActivity;->btnWomen:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 145
    const/4 v3, 0x2

    iput v3, p0, Lcom/samsung/privilege/activity/RegisterActivity;->gender:I

    goto :goto_3c

    .line 157
    .restart local v0    # "text_edtBD":Ljava/lang/String;
    .restart local v1    # "text_edtFName":Ljava/lang/String;
    .restart local v2    # "text_edtLName":Ljava/lang/String;
    :cond_58
    if-eqz v1, :cond_62

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 160
    :cond_62
    const-string v3, "Please input First Name"

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/RegisterActivity;->showToast(Ljava/lang/String;)V

    goto :goto_3c

    .line 164
    :cond_68
    if-eqz v2, :cond_72

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 167
    :cond_72
    const-string v3, "Please input Last Name"

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/RegisterActivity;->showToast(Ljava/lang/String;)V

    goto :goto_3c

    .line 171
    :cond_78
    if-eqz v0, :cond_82

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 174
    :cond_82
    const-string v3, "Please input Birthday"

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/RegisterActivity;->showToast(Ljava/lang/String;)V

    goto :goto_3c

    .line 178
    :cond_88
    invoke-virtual {p0, p1}, Lcom/samsung/privilege/activity/RegisterActivity;->doGoToUpdate(Landroid/view/View;)V

    goto :goto_3c

    .line 136
    :pswitch_data_8c
    .packed-switch 0x7f070353
        :pswitch_3d
        :pswitch_4a
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f030111

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/RegisterActivity;->setContentView(I)V

    .line 74
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->gHandler:Landroid/os/Handler;

    .line 77
    invoke-direct {p0}, Lcom/samsung/privilege/activity/RegisterActivity;->initialParam()V

    .line 78
    invoke-direct {p0}, Lcom/samsung/privilege/activity/RegisterActivity;->initialLayout()V

    .line 79
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .param p1, "id"    # I

    .prologue
    .line 332
    packed-switch p1, :pswitch_data_14

    .line 338
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 335
    :pswitch_5
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/samsung/privilege/activity/RegisterActivity;->datePickerListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/samsung/privilege/activity/RegisterActivity;->year:I

    iget v4, p0, Lcom/samsung/privilege/activity/RegisterActivity;->month:I

    iget v5, p0, Lcom/samsung/privilege/activity/RegisterActivity;->day:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 336
    .local v0, "dialog":Landroid/app/DatePickerDialog;
    goto :goto_4

    .line 332
    :pswitch_data_14
    .packed-switch 0x3e7
        :pswitch_5
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 83
    const/4 v0, 0x4

    if-ne p1, v0, :cond_9

    .line 84
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/privilege/UserLogin;->Logout(Landroid/content/Context;Z)V

    .line 85
    const/4 v0, 0x1

    .line 87
    :goto_8
    return v0

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_8
.end method

.method public setCurrentDateOnView()V
    .registers 5

    .prologue
    .line 308
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 309
    .local v0, "c":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->year:I

    .line 310
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->month:I

    .line 311
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->day:I

    .line 314
    iget-object v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtBD:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    iget v3, p0, Lcom/samsung/privilege/activity/RegisterActivity;->day:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/privilege/activity/RegisterActivity;->month:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/privilege/activity/RegisterActivity;->year:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 314
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/RegisterActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/RegisterActivity$3;-><init>(Lcom/samsung/privilege/activity/RegisterActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 355
    return-void
.end method
