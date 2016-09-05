.class public Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;
.super Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;
.source "ConditionDealGetBlurDialog.java"


# static fields
.field private static a:Landroid/app/Activity;

.field private static b:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;


# instance fields
.field private c:I

.field private d:F

.field private e:Z

.field private f:Z

.field private g:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;IFZZ)Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;
    .registers 10

    .prologue
    .line 67
    new-instance v0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;

    invoke-direct {v0}, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;-><init>()V

    .line 68
    sput-object p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->a:Landroid/app/Activity;

    .line 70
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 71
    const-string/jumbo v2, "bundle_key_blur_radius"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    const-string/jumbo v2, "bundle_key_down_scale_factor"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 73
    const-string/jumbo v2, "bundle_key_dimming_effect"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    const-string/jumbo v2, "bundle_key_debug_effect"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    const-string/jumbo v2, ":data"

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->setArguments(Landroid/os/Bundle;)V

    .line 79
    return-object v0
.end method

.method public static a(Landroid/app/Activity;Landroid/app/Dialog;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V
    .registers 8

    .prologue
    const/4 v2, 0x1

    .line 136
    const-string/jumbo v0, ""

    const v1, 0x7f090018

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "api/campaign/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/redeem?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    new-instance v2, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    const/4 v3, 0x0

    sget-object v4, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->b:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    invoke-direct {v2, p0, v1, v3, v4}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/bzbs/marketplace/asynctask/http/HttpMethod;)V

    new-instance v1, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$3;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$3;-><init>(Landroid/app/Activity;Landroid/app/ProgressDialog;Landroid/app/Dialog;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V

    invoke-virtual {v2, v1}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a(Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;)V

    .line 193
    return-void
.end method

.method static synthetic f()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic g()Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->b:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    return-object v0
.end method


# virtual methods
.method protected a(F)I
    .registers 4

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 280
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected a()Z
    .registers 2

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->f:Z

    return v0
.end method

.method protected b()Z
    .registers 2

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->e:Z

    return v0
.end method

.method protected c()Z
    .registers 2

    .prologue
    .line 263
    const/4 v0, 0x1

    return v0
.end method

.method protected d()F
    .registers 2

    .prologue
    .line 268
    iget v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->d:F

    return v0
.end method

.method protected e()I
    .registers 2

    .prologue
    .line 273
    iget v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->c:I

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 84
    invoke-super {p0, p1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 86
    invoke-virtual {p0}, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 87
    const-string/jumbo v1, "bundle_key_blur_radius"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->c:I

    .line 88
    const-string/jumbo v1, "bundle_key_down_scale_factor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->d:F

    .line 89
    const-string/jumbo v1, "bundle_key_dimming_effect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->e:Z

    .line 90
    const-string/jumbo v1, "bundle_key_debug_effect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->f:Z

    .line 91
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

    .line 93
    sget-object v0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->a:Landroid/app/Activity;

    const-string/jumbo v1, ""

    const v2, 0x7f090018

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->g:Landroid/app/ProgressDialog;

    .line 94
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 98
    invoke-super {p0, p1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 105
    new-instance v0, Landroid/app/Dialog;

    sget-object v1, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->a:Landroid/app/Activity;

    const v2, 0x7f0d0102

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 106
    sget-object v1, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->a:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040105

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 107
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    new-instance v2, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;

    invoke-direct {v2, p0, v1}, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;-><init>(Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;Landroid/view/View;)V

    .line 111
    iget-object v3, v2, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;->btnOK:Landroid/widget/Button;

    new-instance v4, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$1;

    invoke-direct {v4, p0, v0}, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$1;-><init>(Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v2, v2, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$ViewHolder;->btnClose:Landroid/widget/Button;

    new-instance v3, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$2;

    invoke-direct {v3, p0}, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog$2;-><init>(Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 125
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 126
    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 131
    invoke-super {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->onDestroy()V

    .line 132
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDealGetBlurDialog;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 133
    return-void
.end method
