.class public Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;
.super Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;
.source "AlertUpdateProfileBlurDialog.java"


# static fields
.field private static b:Landroid/app/Activity;

.field private static c:Landroid/content/Context;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static m:Ljava/lang/Object;


# instance fields
.field public a:I

.field private i:I

.field private j:F

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;-><init>()V

    .line 50
    const/16 v0, 0x15

    iput v0, p0, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->a:I

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;IFZZ)Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;
    .registers 15

    .prologue
    .line 84
    new-instance v0, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;

    invoke-direct {v0}, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;-><init>()V

    .line 85
    sput-object p0, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->b:Landroid/app/Activity;

    .line 86
    sput-object p1, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->d:Ljava/lang/String;

    .line 87
    sput-object p2, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->e:Ljava/lang/String;

    .line 88
    sput-object p3, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->f:Ljava/lang/String;

    .line 89
    sput-object p4, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->g:Ljava/lang/String;

    .line 90
    sput-object p5, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->h:Ljava/lang/String;

    .line 91
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 92
    const-string/jumbo v2, "bundle_key_blur_radius"

    invoke-virtual {v1, v2, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    const-string/jumbo v2, "bundle_key_down_scale_factor"

    invoke-virtual {v1, v2, p8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 100
    const-string/jumbo v2, "bundle_key_dimming_effect"

    invoke-virtual {v1, v2, p9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    const-string/jumbo v2, "bundle_key_debug_effect"

    invoke-virtual {v1, v2, p10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    const-string/jumbo v2, ":data"

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p6}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->setArguments(Landroid/os/Bundle;)V

    .line 112
    return-object v0
.end method

.method static synthetic f()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->b:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected a()Z
    .registers 2

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->l:Z

    return v0
.end method

.method protected b()Z
    .registers 2

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->k:Z

    return v0
.end method

.method protected c()Z
    .registers 2

    .prologue
    .line 240
    const/4 v0, 0x1

    return v0
.end method

.method protected d()F
    .registers 2

    .prologue
    .line 245
    iget v0, p0, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->j:F

    return v0
.end method

.method protected e()I
    .registers 2

    .prologue
    .line 250
    iget v0, p0, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->i:I

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 148
    invoke-super {p0, p1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 150
    invoke-virtual {p0}, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 151
    const-string/jumbo v1, "bundle_key_blur_radius"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->i:I

    .line 152
    const-string/jumbo v1, "bundle_key_down_scale_factor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->j:F

    .line 153
    const-string/jumbo v1, "bundle_key_dimming_effect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->k:Z

    .line 154
    const-string/jumbo v1, "bundle_key_debug_effect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->l:Z

    .line 155
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-string/jumbo v2, ":data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->m:Ljava/lang/Object;

    .line 156
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 160
    invoke-super {p0, p1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 161
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 12

    .prologue
    const/4 v2, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 166
    new-instance v5, Landroid/app/Dialog;

    sget-object v0, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->b:Landroid/app/Activity;

    if-nez v0, :cond_b6

    sget-object v0, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->c:Landroid/content/Context;

    :goto_c
    const v1, 0x7f0d0101

    invoke-direct {v5, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 167
    sget-object v0, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->b:Landroid/app/Activity;

    if-nez v0, :cond_ba

    sget-object v0, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->c:Landroid/content/Context;

    :goto_18
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400ff

    invoke-virtual {v0, v1, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 168
    invoke-virtual {v5, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 170
    const v0, 0x7f100286

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 171
    const v1, 0x7f1000b5

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 172
    const v2, 0x7f1001ed

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 173
    const v3, 0x7f100290

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 174
    const v4, 0x7f100169

    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 176
    sget-object v7, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->f:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    sget-object v1, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->g:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    sget-object v1, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->d:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 179
    sget-object v1, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->e:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 180
    sget-object v1, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->f:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_be

    .line 181
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 186
    :goto_75
    sget-object v0, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->d:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c2

    .line 187
    invoke-virtual {v2, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 192
    :goto_83
    sget-object v0, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->e:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c6

    .line 193
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 198
    :goto_91
    new-instance v0, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog$1;

    invoke-direct {v0, p0}, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog$1;-><init>(Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    new-instance v0, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog$2;

    invoke-direct {v0, p0}, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog$2;-><init>(Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 213
    invoke-virtual {v5, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 214
    invoke-virtual {v5, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 215
    new-instance v0, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog$3;

    invoke-direct {v0, p0}, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog$3;-><init>(Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;)V

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 224
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 225
    return-object v5

    .line 166
    :cond_b6
    sget-object v0, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->b:Landroid/app/Activity;

    goto/16 :goto_c

    .line 167
    :cond_ba
    sget-object v0, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->b:Landroid/app/Activity;

    goto/16 :goto_18

    .line 183
    :cond_be
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_75

    .line 189
    :cond_c2
    invoke-virtual {v2, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_83

    .line 195
    :cond_c6
    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_91
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .prologue
    .line 302
    invoke-super {p0, p1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 303
    return-void
.end method
