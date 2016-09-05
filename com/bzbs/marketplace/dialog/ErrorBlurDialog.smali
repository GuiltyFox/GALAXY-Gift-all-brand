.class public Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;
.super Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;
.source "ErrorBlurDialog.java"


# static fields
.field private static a:Landroid/app/Activity;

.field private static b:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

.field private static c:Ljava/lang/String;

.field private static d:Lcom/bzbs/marketplace/model/PurchaseModel;


# instance fields
.field private e:I

.field private f:F

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;Ljava/lang/String;IFZZ)Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;
    .registers 11

    .prologue
    .line 51
    new-instance v0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;

    invoke-direct {v0}, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;-><init>()V

    .line 52
    sput-object p0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->a:Landroid/app/Activity;

    .line 53
    sput-object p2, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->c:Ljava/lang/String;

    .line 54
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 56
    const-string/jumbo v2, "bundle_key_blur_radius"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    const-string/jumbo v2, "bundle_key_down_scale_factor"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 58
    const-string/jumbo v2, "bundle_key_dimming_effect"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 59
    const-string/jumbo v2, "bundle_key_debug_effect"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 60
    const-string/jumbo v2, "KEY::Purchase"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 61
    const-string/jumbo v2, ":data"

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->setArguments(Landroid/os/Bundle;)V

    .line 65
    return-object v0
.end method

.method static synthetic f()Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->b:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    return-object v0
.end method

.method static synthetic g()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic h()Lcom/bzbs/marketplace/model/PurchaseModel;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->d:Lcom/bzbs/marketplace/model/PurchaseModel;

    return-object v0
.end method

.method static synthetic i()Ljava/lang/String;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a(F)I
    .registers 4

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 158
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected a()Z
    .registers 2

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->h:Z

    return v0
.end method

.method protected b()Z
    .registers 2

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->g:Z

    return v0
.end method

.method protected c()Z
    .registers 2

    .prologue
    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method protected d()F
    .registers 2

    .prologue
    .line 146
    iget v0, p0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->f:F

    return v0
.end method

.method protected e()I
    .registers 2

    .prologue
    .line 151
    iget v0, p0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->e:I

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 88
    invoke-super {p0, p1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 90
    invoke-virtual {p0}, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 91
    const-string/jumbo v1, "bundle_key_blur_radius"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->e:I

    .line 92
    const-string/jumbo v1, "bundle_key_down_scale_factor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->f:F

    .line 93
    const-string/jumbo v1, "bundle_key_dimming_effect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->g:Z

    .line 94
    const-string/jumbo v1, "bundle_key_debug_effect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->h:Z

    .line 95
    const-string/jumbo v1, "KEY::Purchase"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->i:Z

    .line 97
    iget-boolean v1, p0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->i:Z

    if-eqz v1, :cond_4f

    .line 98
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-string/jumbo v2, ":data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/bzbs/marketplace/model/PurchaseModel;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/PurchaseModel;

    sput-object v0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->d:Lcom/bzbs/marketplace/model/PurchaseModel;

    .line 101
    :goto_4e
    return-void

    .line 100
    :cond_4f
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-string/jumbo v2, ":data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    sput-object v0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->b:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    goto :goto_4e
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 105
    invoke-super {p0, p1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 112
    new-instance v0, Landroid/app/Dialog;

    sget-object v1, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->a:Landroid/app/Activity;

    const v2, 0x7f0d0102

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 113
    sget-object v1, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->a:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04010b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 114
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 116
    new-instance v2, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog$ViewHolder;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v1, v3}, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog$ViewHolder;-><init>(Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;Landroid/view/View;Z)V

    .line 118
    iget-object v2, v2, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog$ViewHolder;->btnClose:Landroid/widget/Button;

    new-instance v3, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog$1;

    invoke-direct {v3, p0}, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog$1;-><init>(Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 125
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 126
    return-object v0
.end method
