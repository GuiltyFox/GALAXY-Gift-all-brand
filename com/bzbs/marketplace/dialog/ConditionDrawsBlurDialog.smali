.class public Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;
.super Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;
.source "ConditionDrawsBlurDialog.java"


# static fields
.field private static a:Landroid/app/Activity;

.field private static b:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;


# instance fields
.field private c:I

.field private d:F

.field private e:Z

.field private f:Z

.field private g:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    const-string/jumbo v0, ""

    sput-object v0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->h:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, ""

    sput-object v0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->i:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, ""

    sput-object v0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->j:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, ""

    sput-object v0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;IFZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;
    .registers 14

    .prologue
    .line 69
    new-instance v0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;

    invoke-direct {v0}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;-><init>()V

    .line 70
    sput-object p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->a:Landroid/app/Activity;

    .line 72
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 73
    const-string/jumbo v2, "bundle_key_blur_radius"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    const-string/jumbo v2, "bundle_key_down_scale_factor"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 75
    const-string/jumbo v2, "bundle_key_dimming_effect"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    const-string/jumbo v2, "bundle_key_debug_effect"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    const-string/jumbo v2, ":data"

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sput-object p6, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->h:Ljava/lang/String;

    .line 80
    sput-object p7, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->i:Ljava/lang/String;

    .line 81
    sput-object p8, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->j:Ljava/lang/String;

    .line 82
    sput-object p9, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->k:Ljava/lang/String;

    .line 84
    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->setArguments(Landroid/os/Bundle;)V

    .line 86
    return-object v0
.end method

.method static synthetic a(Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;)V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->h()V

    return-void
.end method

.method static synthetic b(Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->g:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic f()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic g()Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->b:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    return-object v0
.end method

.method private h()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 137
    sget-object v0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->a:Landroid/app/Activity;

    const-string/jumbo v1, ""

    const v2, 0x7f090018

    invoke-virtual {p0, v2}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->g:Landroid/app/ProgressDialog;

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/campaign/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->b:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/redeem?token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 143
    sget-object v2, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->h:Ljava/lang/String;

    if-eqz v2, :cond_60

    sget-object v2, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->h:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 144
    const-string/jumbo v2, "address"

    sget-object v3, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_60
    sget-object v2, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->i:Ljava/lang/String;

    if-eqz v2, :cond_77

    sget-object v2, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->i:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_77

    .line 148
    const-string/jumbo v2, "zipcode"

    sget-object v3, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_77
    sget-object v2, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->j:Ljava/lang/String;

    if-eqz v2, :cond_8e

    sget-object v2, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->j:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8e

    .line 152
    const-string/jumbo v2, "shippingFirstName"

    sget-object v3, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_8e
    sget-object v2, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->k:Ljava/lang/String;

    if-eqz v2, :cond_a5

    sget-object v2, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->k:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a5

    .line 156
    const-string/jumbo v2, "shippingLastName"

    sget-object v3, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_a5
    new-instance v2, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    sget-object v3, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->a:Landroid/app/Activity;

    sget-object v4, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->b:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/bzbs/marketplace/asynctask/http/HttpMethod;)V

    new-instance v0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$3;

    invoke-direct {v0, p0}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$3;-><init>(Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;)V

    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a(Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;)V

    .line 190
    return-void
.end method


# virtual methods
.method protected a(F)I
    .registers 4

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 221
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected a()Z
    .registers 2

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->f:Z

    return v0
.end method

.method protected b()Z
    .registers 2

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->e:Z

    return v0
.end method

.method protected c()Z
    .registers 2

    .prologue
    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method protected d()F
    .registers 2

    .prologue
    .line 209
    iget v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->d:F

    return v0
.end method

.method protected e()I
    .registers 2

    .prologue
    .line 214
    iget v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->c:I

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 91
    invoke-super {p0, p1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 93
    invoke-virtual {p0}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 94
    const-string/jumbo v1, "bundle_key_blur_radius"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->c:I

    .line 95
    const-string/jumbo v1, "bundle_key_down_scale_factor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->d:F

    .line 96
    const-string/jumbo v1, "bundle_key_dimming_effect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->e:Z

    .line 97
    const-string/jumbo v1, "bundle_key_debug_effect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->f:Z

    .line 98
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-string/jumbo v2, ":data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    sput-object v0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->b:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    .line 99
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 103
    invoke-super {p0, p1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 110
    new-instance v0, Landroid/app/Dialog;

    sget-object v1, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->a:Landroid/app/Activity;

    const v2, 0x7f0c0102

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 111
    sget-object v1, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->a:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04009b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 113
    new-instance v2, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$ViewHolder;

    invoke-direct {v2, p0, v1}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$ViewHolder;-><init>(Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;Landroid/view/View;)V

    .line 114
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v3, v2, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$ViewHolder;->btnOK:Landroid/widget/Button;

    const v4, 0x7f09018f

    invoke-virtual {p0, v4}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v3, v2, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$ViewHolder;->btnClose:Landroid/widget/Button;

    const v4, 0x7f09017a

    invoke-virtual {p0, v4}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v3, v2, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$ViewHolder;->btnClose:Landroid/widget/Button;

    new-instance v4, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$1;

    invoke-direct {v4, p0}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$1;-><init>(Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v2, v2, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$ViewHolder;->btnOK:Landroid/widget/Button;

    new-instance v3, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$2;

    invoke-direct {v3, p0}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$2;-><init>(Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 132
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 133
    return-object v0
.end method
