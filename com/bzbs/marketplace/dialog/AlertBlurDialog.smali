.class public Lcom/bzbs/marketplace/dialog/AlertBlurDialog;
.super Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;
.source "AlertBlurDialog.java"


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
    .line 33
    invoke-direct {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;-><init>()V

    .line 53
    const/16 v0, 0x15

    iput v0, p0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->a:I

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IFZZ)Lcom/bzbs/marketplace/dialog/AlertBlurDialog;
    .registers 13

    .prologue
    .line 56
    new-instance v0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;

    invoke-direct {v0}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;-><init>()V

    .line 57
    sput-object p0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->b:Landroid/app/Activity;

    .line 58
    sput-object p1, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->d:Ljava/lang/String;

    .line 59
    sput-object p2, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->e:Ljava/lang/String;

    .line 60
    sput-object p3, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->f:Ljava/lang/String;

    .line 61
    sput-object p4, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->g:Ljava/lang/String;

    .line 62
    sput-object p5, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->h:Ljava/lang/String;

    .line 63
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 64
    const-string/jumbo v2, "bundle_key_blur_radius"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    const-string/jumbo v2, "bundle_key_down_scale_factor"

    invoke-virtual {v1, v2, p7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 72
    const-string/jumbo v2, "bundle_key_dimming_effect"

    invoke-virtual {v1, v2, p8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    const-string/jumbo v2, "bundle_key_debug_effect"

    invoke-virtual {v1, v2, p9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 81
    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->setArguments(Landroid/os/Bundle;)V

    .line 83
    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;IFZZ)Lcom/bzbs/marketplace/dialog/AlertBlurDialog;
    .registers 15

    .prologue
    .line 87
    new-instance v0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;

    invoke-direct {v0}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;-><init>()V

    .line 88
    sput-object p0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->b:Landroid/app/Activity;

    .line 89
    sput-object p1, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->d:Ljava/lang/String;

    .line 90
    sput-object p2, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->e:Ljava/lang/String;

    .line 91
    sput-object p3, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->f:Ljava/lang/String;

    .line 92
    sput-object p4, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->g:Ljava/lang/String;

    .line 93
    sput-object p5, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->h:Ljava/lang/String;

    .line 94
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 95
    const-string/jumbo v2, "bundle_key_blur_radius"

    invoke-virtual {v1, v2, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    const-string/jumbo v2, "bundle_key_down_scale_factor"

    invoke-virtual {v1, v2, p8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 103
    const-string/jumbo v2, "bundle_key_dimming_effect"

    invoke-virtual {v1, v2, p9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 107
    const-string/jumbo v2, "bundle_key_debug_effect"

    invoke-virtual {v1, v2, p10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 111
    const-string/jumbo v2, ":data"

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p6}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->setArguments(Landroid/os/Bundle;)V

    .line 115
    return-object v0
.end method

.method static synthetic a(Lcom/bzbs/marketplace/dialog/AlertBlurDialog;Z)V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .registers 2

    .prologue
    .line 300
    return-void
.end method

.method static synthetic f()Ljava/lang/String;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->m:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic h()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic i()Landroid/content/Context;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected a()Z
    .registers 2

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->l:Z

    return v0
.end method

.method protected b()Z
    .registers 2

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->k:Z

    return v0
.end method

.method protected c()Z
    .registers 2

    .prologue
    .line 259
    const/4 v0, 0x1

    return v0
.end method

.method protected d()F
    .registers 2

    .prologue
    .line 264
    iget v0, p0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->j:F

    return v0
.end method

.method protected e()I
    .registers 2

    .prologue
    .line 269
    iget v0, p0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->i:I

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    .prologue
    const/4 v3, -0x1

    .line 326
    invoke-super {p0, p1, p2, p3}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 327
    iget v0, p0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->a:I

    if-ne p1, v0, :cond_29

    if-ne p1, v3, :cond_29

    .line 328
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 330
    :cond_29
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 151
    invoke-super {p0, p1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 153
    invoke-virtual {p0}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 154
    const-string/jumbo v1, "bundle_key_blur_radius"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->i:I

    .line 155
    const-string/jumbo v1, "bundle_key_down_scale_factor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->j:F

    .line 156
    const-string/jumbo v1, "bundle_key_dimming_effect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->k:Z

    .line 157
    const-string/jumbo v1, "bundle_key_debug_effect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->l:Z

    .line 158
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-string/jumbo v2, ":data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->m:Ljava/lang/Object;

    .line 159
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 163
    invoke-super {p0, p1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 164
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 12

    .prologue
    const/4 v2, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 169
    new-instance v5, Landroid/app/Dialog;

    sget-object v0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->b:Landroid/app/Activity;

    if-nez v0, :cond_b1

    sget-object v0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->c:Landroid/content/Context;

    :goto_c
    const v1, 0x7f0c0109

    invoke-direct {v5, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 170
    sget-object v0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->b:Landroid/app/Activity;

    if-nez v0, :cond_b5

    sget-object v0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->c:Landroid/content/Context;

    :goto_18
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040102

    invoke-virtual {v0, v1, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 171
    invoke-virtual {v5, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 173
    const v0, 0x7f1002b1

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 174
    const v1, 0x7f1000b7

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 175
    const v2, 0x7f100204

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 176
    const v3, 0x7f1002bb

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 177
    const v4, 0x7f10016b

    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 179
    sget-object v7, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->f:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    sget-object v1, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->g:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    sget-object v1, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->d:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 182
    sget-object v1, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->f:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b9

    .line 183
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 188
    :goto_70
    sget-object v0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->d:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bd

    .line 189
    invoke-virtual {v2, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 194
    :goto_7e
    sget-object v0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->e:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c1

    .line 195
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 200
    :goto_8c
    new-instance v0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog$1;

    invoke-direct {v0, p0}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog$1;-><init>(Lcom/bzbs/marketplace/dialog/AlertBlurDialog;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    new-instance v0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog$2;

    invoke-direct {v0, p0}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog$2;-><init>(Lcom/bzbs/marketplace/dialog/AlertBlurDialog;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 232
    invoke-virtual {v5, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 233
    invoke-virtual {v5, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 234
    new-instance v0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog$3;

    invoke-direct {v0, p0}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog$3;-><init>(Lcom/bzbs/marketplace/dialog/AlertBlurDialog;)V

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 243
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 244
    return-object v5

    .line 169
    :cond_b1
    sget-object v0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->b:Landroid/app/Activity;

    goto/16 :goto_c

    .line 170
    :cond_b5
    sget-object v0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->b:Landroid/app/Activity;

    goto/16 :goto_18

    .line 185
    :cond_b9
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_70

    .line 191
    :cond_bd
    invoke-virtual {v2, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_7e

    .line 197
    :cond_c1
    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_8c
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .prologue
    .line 321
    invoke-super {p0, p1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 322
    return-void
.end method
