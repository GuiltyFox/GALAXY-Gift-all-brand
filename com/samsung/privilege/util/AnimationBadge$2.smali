.class Lcom/samsung/privilege/util/AnimationBadge$2;
.super Ljava/lang/Object;
.source "AnimationBadge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/AnimationBadge;->showToastBadge(Lcom/samsung/privilege/bean/BadgeAlert;Landroid/os/Handler;Landroid/content/Context;Landroid/graphics/Bitmap;)V
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
    iput-object p1, p0, Lcom/samsung/privilege/util/AnimationBadge$2;->val$pContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/privilege/util/AnimationBadge$2;->val$bmp:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/samsung/privilege/util/AnimationBadge$2;->val$pBadge:Lcom/samsung/privilege/bean/BadgeAlert;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 145
    sget-object v14, Lcom/samsung/privilege/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    if-eqz v14, :cond_10b

    .line 146
    sget-object v14, Lcom/samsung/privilege/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 147
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v15, 0x7f030121

    sget-object v14, Lcom/samsung/privilege/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    const v16, 0x7f0c0290

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    invoke-virtual {v4, v15, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 150
    .local v6, "layout":Landroid/view/View;
    const v14, 0x7f550009

    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 151
    .local v7, "layoutMarketRoot":Landroid/widget/RelativeLayout;
    const v14, 0x7f550002

    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 152
    .local v5, "ivBadge":Landroid/widget/ImageView;
    const v14, 0x7f550004

    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 153
    .local v10, "tvBadgeName":Landroid/widget/TextView;
    const v14, 0x7f550003

    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 154
    .local v9, "tvBadgeLevel":Landroid/widget/TextView;
    const v14, 0x7f550005

    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 155
    .local v13, "tvYouEarned":Landroid/widget/TextView;
    const v14, 0x7f55000a

    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 156
    .local v11, "tvMarket":Landroid/widget/TextView;
    const v14, 0x7f550007

    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 158
    .local v12, "tvPoint":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/util/AnimationBadge$2;->val$pContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/privilege/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    invoke-static {v15}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 159
    .local v2, "fontDefault":Landroid/graphics/Typeface;
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 160
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 161
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 162
    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 163
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/util/AnimationBadge$2;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/util/AnimationBadge$2;->val$pBadge:Lcom/samsung/privilege/bean/BadgeAlert;

    iget-object v14, v14, Lcom/samsung/privilege/bean/BadgeAlert;->name:Ljava/lang/String;

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/util/AnimationBadge$2;->val$pBadge:Lcom/samsung/privilege/bean/BadgeAlert;

    iget-object v14, v14, Lcom/samsung/privilege/bean/BadgeAlert;->description:Ljava/lang/String;

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v14, "###,###,###"

    invoke-direct {v3, v14}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 171
    .local v3, "formatter":Ljava/text/NumberFormat;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/util/AnimationBadge$2;->val$pBadge:Lcom/samsung/privilege/bean/BadgeAlert;

    iget v14, v14, Lcom/samsung/privilege/bean/BadgeAlert;->points:I

    int-to-long v14, v14

    invoke-virtual {v3, v14, v15}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "x"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/privilege/util/AnimationBadge$2;->val$pBadge:Lcom/samsung/privilege/bean/BadgeAlert;

    iget v15, v15, Lcom/samsung/privilege/bean/BadgeAlert;->level:I

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/util/AnimationBadge$2;->val$pBadge:Lcom/samsung/privilege/bean/BadgeAlert;

    iget v14, v14, Lcom/samsung/privilege/bean/BadgeAlert;->level:I

    const/4 v15, 0x1

    if-le v14, v15, :cond_10c

    .line 175
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    :goto_e0
    new-instance v14, Lcom/samsung/privilege/util/AnimationBadge$2$1;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/privilege/util/AnimationBadge$2;->val$pContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15, v6}, Lcom/samsung/privilege/util/AnimationBadge$2$1;-><init>(Lcom/samsung/privilege/util/AnimationBadge$2;Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v7, v14}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    new-instance v8, Landroid/widget/Toast;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/util/AnimationBadge$2;->val$pContext:Landroid/content/Context;

    invoke-direct {v8, v14}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 193
    .local v8, "toast":Landroid/widget/Toast;
    const/16 v14, 0x77

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v14, v15, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 194
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Landroid/widget/Toast;->setDuration(I)V

    .line 195
    invoke-virtual {v8, v6}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 196
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 198
    .end local v2    # "fontDefault":Landroid/graphics/Typeface;
    .end local v3    # "formatter":Ljava/text/NumberFormat;
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "ivBadge":Landroid/widget/ImageView;
    .end local v6    # "layout":Landroid/view/View;
    .end local v7    # "layoutMarketRoot":Landroid/widget/RelativeLayout;
    .end local v8    # "toast":Landroid/widget/Toast;
    .end local v9    # "tvBadgeLevel":Landroid/widget/TextView;
    .end local v10    # "tvBadgeName":Landroid/widget/TextView;
    .end local v11    # "tvMarket":Landroid/widget/TextView;
    .end local v12    # "tvPoint":Landroid/widget/TextView;
    .end local v13    # "tvYouEarned":Landroid/widget/TextView;
    :cond_10b
    return-void

    .line 177
    .restart local v2    # "fontDefault":Landroid/graphics/Typeface;
    .restart local v3    # "formatter":Ljava/text/NumberFormat;
    .restart local v4    # "inflater":Landroid/view/LayoutInflater;
    .restart local v5    # "ivBadge":Landroid/widget/ImageView;
    .restart local v6    # "layout":Landroid/view/View;
    .restart local v7    # "layoutMarketRoot":Landroid/widget/RelativeLayout;
    .restart local v9    # "tvBadgeLevel":Landroid/widget/TextView;
    .restart local v10    # "tvBadgeName":Landroid/widget/TextView;
    .restart local v11    # "tvMarket":Landroid/widget/TextView;
    .restart local v12    # "tvPoint":Landroid/widget/TextView;
    .restart local v13    # "tvYouEarned":Landroid/widget/TextView;
    :cond_10c
    const/16 v14, 0x8

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_e0
.end method
