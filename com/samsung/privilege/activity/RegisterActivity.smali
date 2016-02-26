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

    .line 377
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
    .registers 3

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RegisterActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->gFontDefault:Landroid/graphics/Typeface;

    .line 99
    const v0, 0x7f0c0361

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->btnMen:Landroid/widget/ImageView;

    .line 100
    const v0, 0x7f0c0362

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->btnWomen:Landroid/widget/ImageView;

    .line 101
    const v0, 0x7f0c0363

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->tvFName:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f0c0365

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->tvLName:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f0c0367

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->tvBD:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f0c0364

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtFName:Landroid/widget/EditText;

    .line 105
    const v0, 0x7f0c0366

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtLName:Landroid/widget/EditText;

    .line 106
    const v0, 0x7f0c0368

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtBD:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f0c036b

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->pbLoadingProfile:Landroid/widget/ProgressBar;

    .line 109
    iget-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->tvFName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 110
    iget-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->tvLName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 111
    iget-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->tvBD:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 112
    iget-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtFName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 113
    iget-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtLName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 114
    iget-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtBD:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 115
    const v0, 0x7f0c036a

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 117
    iget-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->tvFName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 118
    iget-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->tvLName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 119
    iget-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->tvBD:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 120
    iget-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtFName:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 121
    iget-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtLName:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 122
    iget-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtBD:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 124
    iget-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->btnMen:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->btnWomen:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RegisterActivity;->addListenerOnButton()V

    .line 130
    return-void
.end method

.method private initialParam()V
    .registers 3

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "msg_newbie"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->paramsData:Ljava/lang/String;

    .line 95
    return-void
.end method


# virtual methods
.method public addListenerOnButton()V
    .registers 3

    .prologue
    .line 353
    iget-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtBD:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/privilege/activity/RegisterActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/RegisterActivity$2;-><init>(Lcom/samsung/privilege/activity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    return-void
.end method

.method public doGoToUpdate(Landroid/view/View;)V
    .registers 16
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v12, 0x3e8

    .line 218
    new-instance v0, Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;-><init>(Landroid/content/Context;)V

    .line 219
    .local v0, "cd":Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;
    invoke-virtual {v0}, Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;->isConnectingToInternet()Z

    move-result v8

    if-nez v8, :cond_20

    .line 220
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0900c1

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/RegisterActivity;->showToast(Ljava/lang/String;)V

    .line 274
    :goto_1f
    return-void

    .line 223
    :cond_20
    iget-object v8, p0, Lcom/samsung/privilege/activity/RegisterActivity;->pbLoadingProfile:Landroid/widget/ProgressBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 224
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

    .line 226
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

    .line 227
    new-instance v5, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v5}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 228
    .local v5, "paramsRequestParams":Lcom/loopj/android/http/RequestParams;
    iget v8, p0, Lcom/samsung/privilege/activity/RegisterActivity;->gender:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_193

    .line 229
    const-string v8, "gender"

    const-string v9, "female"

    invoke-virtual {v5, v8, v9}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v8, "female"

    iput-object v8, p0, Lcom/samsung/privilege/activity/RegisterActivity;->strGender:Ljava/lang/String;

    .line 231
    const-string v8, "Register"

    const-string v9, "gender female"

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
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

    .line 239
    iget-object v8, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtBD:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 241
    .local v6, "str_date":Ljava/lang/String;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 242
    .local v1, "date":Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v8, "dd/MM/yyyy"

    invoke-direct {v3, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 244
    .local v3, "formatter":Ljava/text/SimpleDateFormat;
    :try_start_9f
    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_a2
    .catch Ljava/text/ParseException; {:try_start_9f .. :try_end_a2} :catch_1ac

    move-result-object v1

    .line 249
    :goto_a3
    const-string v8, "birthdate"

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
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

    .line 257
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

    .line 258
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

    .line 259
    const-string v8, "lastname"

    iget-object v9, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtLName:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
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

    .line 262
    const-string v8, "ShippingFirstName"

    iget-object v9, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtFName:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
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

    .line 264
    const-string v8, "ShippingLastName"

    iget-object v9, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtLName:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
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

    .line 270
    new-instance v4, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v4}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 271
    .local v4, "myClient":Lcom/loopj/android/http/AsyncHttpClient;
    const v8, 0x1d4c0

    invoke-virtual {v4, v8}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 272
    new-instance v8, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;

    invoke-direct {v8, p0}, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;-><init>(Lcom/samsung/privilege/activity/RegisterActivity;)V

    invoke-virtual {v4, v7, v5, v8}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto/16 :goto_1f

    .line 232
    .end local v4    # "myClient":Lcom/loopj/android/http/AsyncHttpClient;
    :cond_193
    iget v8, p0, Lcom/samsung/privilege/activity/RegisterActivity;->gender:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_77

    .line 233
    const-string v8, "gender"

    const-string v9, "male"

    invoke-virtual {v5, v8, v9}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v8, "male"

    iput-object v8, p0, Lcom/samsung/privilege/activity/RegisterActivity;->strGender:Ljava/lang/String;

    .line 235
    const-string v8, "Register"

    const-string v9, "gender male"

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_77

    .line 245
    .restart local v1    # "date":Ljava/util/Date;
    .restart local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v6    # "str_date":Ljava/lang/String;
    :catch_1ac
    move-exception v2

    .line 246
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_a3
.end method

.method public doRegister(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    iget-object v3, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtFName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "text_edtFName":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtLName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "text_edtLName":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtBD:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "text_edtBD":Ljava/lang/String;
    iget v3, p0, Lcom/samsung/privilege/activity/RegisterActivity;->gender:I

    if-nez v3, :cond_34

    .line 188
    const-string v3, "Please select gender"

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/RegisterActivity;->showToast(Ljava/lang/String;)V

    .line 214
    :goto_33
    return-void

    .line 192
    :cond_34
    if-eqz v1, :cond_3e

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 195
    :cond_3e
    const-string v3, "Please input First Name"

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/RegisterActivity;->showToast(Ljava/lang/String;)V

    goto :goto_33

    .line 199
    :cond_44
    if-eqz v2, :cond_4e

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 202
    :cond_4e
    const-string v3, "Please input Last Name"

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/RegisterActivity;->showToast(Ljava/lang/String;)V

    goto :goto_33

    .line 206
    :cond_54
    if-eqz v0, :cond_5e

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 209
    :cond_5e
    const-string v3, "Please input Birthday"

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/RegisterActivity;->showToast(Ljava/lang/String;)V

    goto :goto_33

    .line 213
    :cond_64
    invoke-virtual {p0, p1}, Lcom/samsung/privilege/activity/RegisterActivity;->doGoToUpdate(Landroid/view/View;)V

    goto :goto_33
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_8c

    .line 146
    iget-object v3, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtFName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "text_edtFName":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtLName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "text_edtLName":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtBD:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "text_edtBD":Ljava/lang/String;
    iget v3, p0, Lcom/samsung/privilege/activity/RegisterActivity;->gender:I

    if-nez v3, :cond_58

    .line 151
    const-string v3, "Please select gender"

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/RegisterActivity;->showToast(Ljava/lang/String;)V

    .line 180
    .end local v0    # "text_edtBD":Ljava/lang/String;
    .end local v1    # "text_edtFName":Ljava/lang/String;
    .end local v2    # "text_edtLName":Ljava/lang/String;
    :goto_3c
    return-void

    .line 136
    :pswitch_3d
    iget-object v3, p0, Lcom/samsung/privilege/activity/RegisterActivity;->btnMen:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 137
    iget-object v3, p0, Lcom/samsung/privilege/activity/RegisterActivity;->btnWomen:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 138
    iput v4, p0, Lcom/samsung/privilege/activity/RegisterActivity;->gender:I

    goto :goto_3c

    .line 141
    :pswitch_4a
    iget-object v3, p0, Lcom/samsung/privilege/activity/RegisterActivity;->btnMen:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 142
    iget-object v3, p0, Lcom/samsung/privilege/activity/RegisterActivity;->btnWomen:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 143
    const/4 v3, 0x2

    iput v3, p0, Lcom/samsung/privilege/activity/RegisterActivity;->gender:I

    goto :goto_3c

    .line 155
    .restart local v0    # "text_edtBD":Ljava/lang/String;
    .restart local v1    # "text_edtFName":Ljava/lang/String;
    .restart local v2    # "text_edtLName":Ljava/lang/String;
    :cond_58
    if-eqz v1, :cond_62

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 158
    :cond_62
    const-string v3, "Please input First Name"

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/RegisterActivity;->showToast(Ljava/lang/String;)V

    goto :goto_3c

    .line 162
    :cond_68
    if-eqz v2, :cond_72

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 165
    :cond_72
    const-string v3, "Please input Last Name"

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/RegisterActivity;->showToast(Ljava/lang/String;)V

    goto :goto_3c

    .line 169
    :cond_78
    if-eqz v0, :cond_82

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 172
    :cond_82
    const-string v3, "Please input Birthday"

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/RegisterActivity;->showToast(Ljava/lang/String;)V

    goto :goto_3c

    .line 176
    :cond_88
    invoke-virtual {p0, p1}, Lcom/samsung/privilege/activity/RegisterActivity;->doGoToUpdate(Landroid/view/View;)V

    goto :goto_3c

    .line 134
    :pswitch_data_8c
    .packed-switch 0x7f0c0361
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
    const v0, 0x7f030113

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
    .line 364
    packed-switch p1, :pswitch_data_58

    .line 374
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 367
    :pswitch_5
    const-string v1, "Register"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "year="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/privilege/activity/RegisterActivity;->year:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",month="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/privilege/activity/RegisterActivity;->month:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",day="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/privilege/activity/RegisterActivity;->day:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->year:I

    if-nez v1, :cond_3b

    const/16 v1, 0x7b2

    iput v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->year:I

    .line 369
    :cond_3b
    iget v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->month:I

    if-nez v1, :cond_42

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->month:I

    .line 370
    :cond_42
    iget v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->day:I

    if-nez v1, :cond_49

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->day:I

    .line 371
    :cond_49
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/samsung/privilege/activity/RegisterActivity;->datePickerListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/samsung/privilege/activity/RegisterActivity;->year:I

    iget v4, p0, Lcom/samsung/privilege/activity/RegisterActivity;->month:I

    iget v5, p0, Lcom/samsung/privilege/activity/RegisterActivity;->day:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 372
    .local v0, "dialog":Landroid/app/DatePickerDialog;
    goto :goto_4

    .line 364
    :pswitch_data_58
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

    if-ne p1, v0, :cond_c

    .line 84
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/privilege/UserLogin;->Logout(Landroid/content/Context;Z)V

    .line 85
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RegisterActivity;->finish()V

    .line 86
    const/4 v0, 0x1

    .line 88
    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b
.end method

.method public setCurrentDateOnView()V
    .registers 5

    .prologue
    .line 340
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 341
    .local v0, "c":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->year:I

    .line 342
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->month:I

    .line 343
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->day:I

    .line 346
    iget-object v1, p0, Lcom/samsung/privilege/activity/RegisterActivity;->edtBD:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
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

    .line 346
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/RegisterActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/RegisterActivity$3;-><init>(Lcom/samsung/privilege/activity/RegisterActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 391
    return-void
.end method
