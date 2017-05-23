.class public Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;
.super Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;
.source "ConditionDealGetBlurDialog.java"


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
    .line 67
    const-string/jumbo v0, ""

    sput-object v0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->h:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, ""

    sput-object v0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->i:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, ""

    sput-object v0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->j:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, ""

    sput-object v0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;IFZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;
    .registers 14

    .prologue
    .line 73
    new-instance v0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;

    invoke-direct {v0}, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;-><init>()V

    .line 74
    sput-object p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->a:Landroid/app/Activity;

    .line 76
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 77
    const-string/jumbo v2, "bundle_key_blur_radius"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    const-string/jumbo v2, "bundle_key_down_scale_factor"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 79
    const-string/jumbo v2, "bundle_key_dimming_effect"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 80
    const-string/jumbo v2, "bundle_key_debug_effect"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 81
    const-string/jumbo v2, ":data"

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sput-object p6, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->h:Ljava/lang/String;

    .line 84
    sput-object p7, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->i:Ljava/lang/String;

    .line 85
    sput-object p8, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->j:Ljava/lang/String;

    .line 86
    sput-object p9, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->k:Ljava/lang/String;

    .line 88
    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->setArguments(Landroid/os/Bundle;)V

    .line 90
    return-object v0
.end method

.method public static a(Landroid/app/Activity;Landroid/app/Dialog;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V
    .registers 8

    .prologue
    const/4 v2, 0x1

    .line 147
    const-string/jumbo v0, ""

    const v1, 0x7f090018

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 149
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 151
    sget-object v2, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->h:Ljava/lang/String;

    if-eqz v2, :cond_2b

    sget-object v2, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->h:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 152
    const-string/jumbo v2, "address"

    sget-object v3, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_2b
    sget-object v2, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->i:Ljava/lang/String;

    if-eqz v2, :cond_42

    sget-object v2, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->i:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 156
    const-string/jumbo v2, "zipcode"

    sget-object v3, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_42
    sget-object v2, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->j:Ljava/lang/String;

    if-eqz v2, :cond_59

    sget-object v2, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->j:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 160
    const-string/jumbo v2, "shippingFirstName"

    sget-object v3, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_59
    sget-object v2, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->k:Ljava/lang/String;

    if-eqz v2, :cond_70

    sget-object v2, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->k:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    .line 164
    const-string/jumbo v2, "shippingLastName"

    sget-object v3, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "api/campaign/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/redeem?token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 168
    new-instance v3, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    sget-object v4, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->b:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    invoke-direct {v3, p0, v2, v1, v4}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/bzbs/marketplace/asynctask/http/HttpMethod;)V

    new-instance v1, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$3;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$3;-><init>(Landroid/app/Activity;Landroid/app/ProgressDialog;Landroid/app/Dialog;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V

    invoke-virtual {v3, v1}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a(Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;)V

    .line 222
    return-void
.end method

.method static synthetic f()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic g()Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->b:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    return-object v0
.end method


# virtual methods
.method protected a(F)I
    .registers 4

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 309
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected a()Z
    .registers 2

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->f:Z

    return v0
.end method

.method protected b()Z
    .registers 2

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->e:Z

    return v0
.end method

.method protected c()Z
    .registers 2

    .prologue
    .line 292
    const/4 v0, 0x1

    return v0
.end method

.method protected d()F
    .registers 2

    .prologue
    .line 297
    iget v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->d:F

    return v0
.end method

.method protected e()I
    .registers 2

    .prologue
    .line 302
    iget v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->c:I

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 95
    invoke-super {p0, p1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 97
    invoke-virtual {p0}, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 98
    const-string/jumbo v1, "bundle_key_blur_radius"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->c:I

    .line 99
    const-string/jumbo v1, "bundle_key_down_scale_factor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->d:F

    .line 100
    const-string/jumbo v1, "bundle_key_dimming_effect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->e:Z

    .line 101
    const-string/jumbo v1, "bundle_key_debug_effect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->f:Z

    .line 102
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-string/jumbo v2, ":data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    sput-object v0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->b:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    .line 104
    sget-object v0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->a:Landroid/app/Activity;

    const-string/jumbo v1, ""

    const v2, 0x7f090018

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->g:Landroid/app/ProgressDialog;

    .line 105
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 109
    invoke-super {p0, p1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 110
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 116
    new-instance v0, Landroid/app/Dialog;

    sget-object v1, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->a:Landroid/app/Activity;

    const v2, 0x7f0c0102

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 117
    sget-object v1, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->a:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04009b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 118
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    new-instance v2, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;

    invoke-direct {v2, p0, v1}, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;-><init>(Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;Landroid/view/View;)V

    .line 122
    iget-object v3, v2, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;->btnOK:Landroid/widget/Button;

    new-instance v4, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$1;

    invoke-direct {v4, p0, v0}, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$1;-><init>(Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v2, v2, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;->btnClose:Landroid/widget/Button;

    new-instance v3, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$2;

    invoke-direct {v3, p0}, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$2;-><init>(Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 136
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 137
    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 142
    invoke-super {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->onDestroy()V

    .line 143
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 144
    return-void
.end method
