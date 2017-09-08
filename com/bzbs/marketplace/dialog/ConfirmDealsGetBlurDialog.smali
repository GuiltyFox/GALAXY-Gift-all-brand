.class public Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;
.super Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;
.source "ConfirmDealsGetBlurDialog.java"


# static fields
.field private static a:Landroid/app/Activity;

.field private static b:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;


# instance fields
.field private c:I

.field private d:F

.field private e:Z

.field private f:Z


# direct methods
.method static synthetic f()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic g()Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->b:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    return-object v0
.end method


# virtual methods
.method protected a(F)I
    .registers 4

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 190
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public a(Landroid/app/Activity;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V
    .registers 8

    .prologue
    const/4 v2, 0x1

    .line 131
    const-string/jumbo v0, ""

    const v1, 0x7f090018

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v2, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->W:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "api/campaign/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/use?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    new-instance v2, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    const/4 v3, 0x0

    sget-object v4, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->b:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    invoke-direct {v2, p1, v1, v3, v4}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/bzbs/marketplace/asynctask/http/HttpMethod;)V

    new-instance v1, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$3;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$3;-><init>(Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;Landroid/app/ProgressDialog;Landroid/app/Activity;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V

    invoke-virtual {v2, v1}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a(Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;)V

    .line 159
    return-void
.end method

.method protected a()Z
    .registers 2

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->f:Z

    return v0
.end method

.method protected b()Z
    .registers 2

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->e:Z

    return v0
.end method

.method protected c()Z
    .registers 2

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method protected d()F
    .registers 2

    .prologue
    .line 178
    iget v0, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->d:F

    return v0
.end method

.method protected e()I
    .registers 2

    .prologue
    .line 183
    iget v0, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->c:I

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 79
    invoke-super {p0, p1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 81
    invoke-virtual {p0}, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 82
    const-string/jumbo v1, "bundle_key_blur_radius"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->c:I

    .line 83
    const-string/jumbo v1, "bundle_key_down_scale_factor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->d:F

    .line 84
    const-string/jumbo v1, "bundle_key_dimming_effect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->e:Z

    .line 85
    const-string/jumbo v1, "bundle_key_debug_effect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->f:Z

    .line 86
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-string/jumbo v2, ":data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    sput-object v0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->b:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    .line 89
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 93
    invoke-super {p0, p1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 99
    new-instance v0, Landroid/app/Dialog;

    sget-object v1, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->a:Landroid/app/Activity;

    const v2, 0x7f0c0102

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 100
    sget-object v1, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->a:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400ac

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 102
    new-instance v2, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$ViewHolder;

    invoke-direct {v2, p0, v1}, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$ViewHolder;-><init>(Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;Landroid/view/View;)V

    .line 103
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 106
    const-string/jumbo v3, "OATE"

    const-string/jumbo v4, "333333"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v3, v2, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$ViewHolder;->btnClose:Landroid/widget/Button;

    new-instance v4, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$1;

    invoke-direct {v4, p0}, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$1;-><init>(Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v2, v2, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$ViewHolder;->btnOK:Landroid/widget/Button;

    new-instance v3, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$2;

    invoke-direct {v3, p0}, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$2;-><init>(Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 126
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 127
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .prologue
    .line 253
    invoke-super {p0, p1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 255
    return-void
.end method
