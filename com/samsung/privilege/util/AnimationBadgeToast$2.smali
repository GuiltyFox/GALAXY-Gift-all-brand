.class Lcom/samsung/privilege/util/AnimationBadgeToast$2;
.super Ljava/lang/Object;
.source "AnimationBadgeToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/AnimationBadgeToast;->showToastBadge(Lcom/samsung/privilege/bean/BadgeAlert;Landroid/os/Handler;Landroid/content/Context;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$bmp:Landroid/graphics/Bitmap;

.field private final synthetic val$pBadge:Lcom/samsung/privilege/bean/BadgeAlert;

.field private final synthetic val$pContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/samsung/privilege/bean/BadgeAlert;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/AnimationBadgeToast$2;->val$pContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/privilege/util/AnimationBadgeToast$2;->val$bmp:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/samsung/privilege/util/AnimationBadgeToast$2;->val$pBadge:Lcom/samsung/privilege/bean/BadgeAlert;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    .line 145
    sget-object v12, Lcom/samsung/privilege/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    if-eqz v12, :cond_ee

    .line 146
    sget-object v12, Lcom/samsung/privilege/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 147
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v13, 0x7f03011f

    sget-object v12, Lcom/samsung/privilege/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    const v14, 0x7f070290

    invoke-virtual {v12, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    invoke-virtual {v2, v13, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 150
    .local v4, "layout":Landroid/view/View;
    const v12, 0x7f550009

    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 151
    .local v5, "layoutMarketRoot":Landroid/widget/RelativeLayout;
    const v12, 0x7f550002

    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 152
    .local v3, "ivBadge":Landroid/widget/ImageView;
    const v12, 0x7f550004

    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 153
    .local v8, "tvBadgeName":Landroid/widget/TextView;
    const v12, 0x7f550003

    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 154
    .local v7, "tvBadgeLevel":Landroid/widget/TextView;
    const v12, 0x7f550005

    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 155
    .local v11, "tvYouEarned":Landroid/widget/TextView;
    const v12, 0x7f55000a

    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 156
    .local v9, "tvMarket":Landroid/widget/TextView;
    const v12, 0x7f550007

    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 158
    .local v10, "tvPoint":Landroid/widget/TextView;
    iget-object v12, p0, Lcom/samsung/privilege/util/AnimationBadgeToast$2;->val$pContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/privilege/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    invoke-static {v13}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 159
    .local v0, "fontDefault":Landroid/graphics/Typeface;
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 160
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 161
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 162
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 163
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 165
    iget-object v12, p0, Lcom/samsung/privilege/util/AnimationBadgeToast$2;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 167
    iget-object v12, p0, Lcom/samsung/privilege/util/AnimationBadgeToast$2;->val$pBadge:Lcom/samsung/privilege/bean/BadgeAlert;

    iget-object v12, v12, Lcom/samsung/privilege/bean/BadgeAlert;->name:Ljava/lang/String;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v12, p0, Lcom/samsung/privilege/util/AnimationBadgeToast$2;->val$pBadge:Lcom/samsung/privilege/bean/BadgeAlert;

    iget-object v12, v12, Lcom/samsung/privilege/bean/BadgeAlert;->description:Ljava/lang/String;

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v12, "###,###,###"

    invoke-direct {v1, v12}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 171
    .local v1, "formatter":Ljava/text/NumberFormat;
    iget-object v12, p0, Lcom/samsung/privilege/util/AnimationBadgeToast$2;->val$pBadge:Lcom/samsung/privilege/bean/BadgeAlert;

    iget v12, v12, Lcom/samsung/privilege/bean/BadgeAlert;->points:I

    int-to-long v12, v12

    invoke-virtual {v1, v12, v13}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "x"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/samsung/privilege/util/AnimationBadgeToast$2;->val$pBadge:Lcom/samsung/privilege/bean/BadgeAlert;

    iget v13, v13, Lcom/samsung/privilege/bean/BadgeAlert;->level:I

    int-to-long v13, v13

    invoke-virtual {v1, v13, v14}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v12, p0, Lcom/samsung/privilege/util/AnimationBadgeToast$2;->val$pBadge:Lcom/samsung/privilege/bean/BadgeAlert;

    iget v12, v12, Lcom/samsung/privilege/bean/BadgeAlert;->level:I

    const/4 v13, 0x1

    if-le v12, v13, :cond_ef

    .line 175
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    :goto_cc
    new-instance v12, Lcom/samsung/privilege/util/AnimationBadgeToast$2$1;

    iget-object v13, p0, Lcom/samsung/privilege/util/AnimationBadgeToast$2;->val$pContext:Landroid/content/Context;

    invoke-direct {v12, p0, v13, v4}, Lcom/samsung/privilege/util/AnimationBadgeToast$2$1;-><init>(Lcom/samsung/privilege/util/AnimationBadgeToast$2;Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    new-instance v6, Landroid/widget/Toast;

    iget-object v12, p0, Lcom/samsung/privilege/util/AnimationBadgeToast$2;->val$pContext:Landroid/content/Context;

    invoke-direct {v6, v12}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 193
    .local v6, "toast":Landroid/widget/Toast;
    const/16 v12, 0x77

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v6, v12, v13, v14}, Landroid/widget/Toast;->setGravity(III)V

    .line 194
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Landroid/widget/Toast;->setDuration(I)V

    .line 195
    invoke-virtual {v6, v4}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 196
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 198
    .end local v0    # "fontDefault":Landroid/graphics/Typeface;
    .end local v1    # "formatter":Ljava/text/NumberFormat;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "ivBadge":Landroid/widget/ImageView;
    .end local v4    # "layout":Landroid/view/View;
    .end local v5    # "layoutMarketRoot":Landroid/widget/RelativeLayout;
    .end local v6    # "toast":Landroid/widget/Toast;
    .end local v7    # "tvBadgeLevel":Landroid/widget/TextView;
    .end local v8    # "tvBadgeName":Landroid/widget/TextView;
    .end local v9    # "tvMarket":Landroid/widget/TextView;
    .end local v10    # "tvPoint":Landroid/widget/TextView;
    .end local v11    # "tvYouEarned":Landroid/widget/TextView;
    :cond_ee
    return-void

    .line 177
    .restart local v0    # "fontDefault":Landroid/graphics/Typeface;
    .restart local v1    # "formatter":Ljava/text/NumberFormat;
    .restart local v2    # "inflater":Landroid/view/LayoutInflater;
    .restart local v3    # "ivBadge":Landroid/widget/ImageView;
    .restart local v4    # "layout":Landroid/view/View;
    .restart local v5    # "layoutMarketRoot":Landroid/widget/RelativeLayout;
    .restart local v7    # "tvBadgeLevel":Landroid/widget/TextView;
    .restart local v8    # "tvBadgeName":Landroid/widget/TextView;
    .restart local v9    # "tvMarket":Landroid/widget/TextView;
    .restart local v10    # "tvPoint":Landroid/widget/TextView;
    .restart local v11    # "tvYouEarned":Landroid/widget/TextView;
    :cond_ef
    const/16 v12, 0x8

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_cc
.end method
