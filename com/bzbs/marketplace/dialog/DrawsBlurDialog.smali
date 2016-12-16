.class public Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;
.super Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;
.source "DrawsBlurDialog.java"


# static fields
.field private static a:Landroid/app/Activity;


# instance fields
.field private b:I

.field private c:F

.field private d:Z

.field private e:Z

.field private f:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;-><init>()V

    .line 53
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;IFZZ)Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;
    .registers 10

    .prologue
    .line 56
    new-instance v0, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;

    invoke-direct {v0}, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;-><init>()V

    .line 57
    sput-object p0, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;->a:Landroid/app/Activity;

    .line 59
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 60
    const-string/jumbo v2, "bundle_key_blur_radius"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    const-string/jumbo v2, "bundle_key_down_scale_factor"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 62
    const-string/jumbo v2, "bundle_key_dimming_effect"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    const-string/jumbo v2, "bundle_key_debug_effect"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    const-string/jumbo v2, ":data"

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;->setArguments(Landroid/os/Bundle;)V

    .line 68
    return-object v0
.end method

.method static synthetic a(Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;)Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;->f:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    return-object v0
.end method

.method static synthetic f()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected a(F)I
    .registers 4

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 135
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected a()Z
    .registers 2

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;->e:Z

    return v0
.end method

.method protected b()Z
    .registers 2

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;->d:Z

    return v0
.end method

.method protected c()Z
    .registers 2

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method protected d()F
    .registers 2

    .prologue
    .line 123
    iget v0, p0, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;->c:F

    return v0
.end method

.method protected e()I
    .registers 2

    .prologue
    .line 128
    iget v0, p0, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;->b:I

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 73
    invoke-super {p0, p1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 75
    invoke-virtual {p0}, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 76
    const-string/jumbo v1, "bundle_key_blur_radius"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;->b:I

    .line 77
    const-string/jumbo v1, "bundle_key_down_scale_factor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;->c:F

    .line 78
    const-string/jumbo v1, "bundle_key_dimming_effect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;->d:Z

    .line 79
    const-string/jumbo v1, "bundle_key_debug_effect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;->e:Z

    .line 80
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-string/jumbo v2, ":data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    iput-object v0, p0, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;->f:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    .line 81
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 85
    invoke-super {p0, p1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7

    .prologue
    .line 91
    new-instance v0, Landroid/app/Dialog;

    sget-object v1, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;->a:Landroid/app/Activity;

    const v2, 0x7f0d0102

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 92
    sget-object v1, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;->a:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04010c

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 94
    new-instance v2, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog$ViewHolder;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v1, v3}, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog$ViewHolder;-><init>(Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;Landroid/view/View;Z)V

    .line 95
    iget-object v2, v2, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog$ViewHolder;->btnClose:Landroid/widget/Button;

    new-instance v3, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog$1;

    invoke-direct {v3, p0}, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog$1;-><init>(Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 102
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 103
    return-object v0
.end method
