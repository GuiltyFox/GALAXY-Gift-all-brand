.class final Lcom/samsung/privilege/util/AnimationBadge$2;
.super Ljava/lang/Object;
.source "AnimationBadge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/AnimationBadge;->b(Lcom/bzbs/bean/BadgeAlert;Landroid/os/Handler;Landroid/content/Context;Landroid/graphics/Bitmap;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Lcom/bzbs/bean/BadgeAlert;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/bzbs/bean/BadgeAlert;)V
    .registers 4

    .prologue
    .line 144
    iput-object p1, p0, Lcom/samsung/privilege/util/AnimationBadge$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/privilege/util/AnimationBadge$2;->b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/samsung/privilege/util/AnimationBadge$2;->c:Lcom/bzbs/bean/BadgeAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 147
    sget-object v0, Lcom/bzbs/data/AppSetting;->a:Landroid/app/Activity;

    if-eqz v0, :cond_f0

    .line 148
    sget-object v0, Lcom/bzbs/data/AppSetting;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 149
    const v2, 0x7f040175

    sget-object v0, Lcom/bzbs/data/AppSetting;->a:Landroid/app/Activity;

    const v3, 0x7f1004f6

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 152
    const v0, 0x7f1006ca

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 153
    const v1, 0x7f1006c5

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 154
    const v2, 0x7f10022e

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 155
    const v3, 0x7f1006c6

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 156
    const v4, 0x7f1006c7

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 157
    const v5, 0x7f1006cb

    invoke-virtual {v7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 158
    const v6, 0x7f1002fd

    invoke-virtual {v7, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 160
    iget-object v8, p0, Lcom/samsung/privilege/util/AnimationBadge$2;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    sget-object v9, Lcom/bzbs/data/AppSetting;->a:Landroid/app/Activity;

    invoke-static {v9}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    .line 161
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 162
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 163
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 164
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 165
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 167
    iget-object v4, p0, Lcom/samsung/privilege/util/AnimationBadge$2;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 169
    iget-object v1, p0, Lcom/samsung/privilege/util/AnimationBadge$2;->c:Lcom/bzbs/bean/BadgeAlert;

    iget-object v1, v1, Lcom/bzbs/bean/BadgeAlert;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v1, p0, Lcom/samsung/privilege/util/AnimationBadge$2;->c:Lcom/bzbs/bean/BadgeAlert;

    iget-object v1, v1, Lcom/bzbs/bean/BadgeAlert;->description:Ljava/lang/String;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v2, "###,###,###"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 173
    iget-object v2, p0, Lcom/samsung/privilege/util/AnimationBadge$2;->c:Lcom/bzbs/bean/BadgeAlert;

    iget v2, v2, Lcom/bzbs/bean/BadgeAlert;->points:I

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/privilege/util/AnimationBadge$2;->c:Lcom/bzbs/bean/BadgeAlert;

    iget v4, v4, Lcom/bzbs/bean/BadgeAlert;->level:I

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v1, p0, Lcom/samsung/privilege/util/AnimationBadge$2;->c:Lcom/bzbs/bean/BadgeAlert;

    iget v1, v1, Lcom/bzbs/bean/BadgeAlert;->level:I

    if-le v1, v11, :cond_f1

    .line 177
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    :goto_d3
    new-instance v1, Lcom/samsung/privilege/util/AnimationBadge$2$1;

    invoke-direct {v1, p0, v7}, Lcom/samsung/privilege/util/AnimationBadge$2$1;-><init>(Lcom/samsung/privilege/util/AnimationBadge$2;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    new-instance v0, Landroid/widget/Toast;

    iget-object v1, p0, Lcom/samsung/privilege/util/AnimationBadge$2;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 195
    const/16 v1, 0x77

    invoke-virtual {v0, v1, v10, v10}, Landroid/widget/Toast;->setGravity(III)V

    .line 196
    invoke-virtual {v0, v11}, Landroid/widget/Toast;->setDuration(I)V

    .line 197
    invoke-virtual {v0, v7}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 198
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 200
    :cond_f0
    return-void

    .line 179
    :cond_f1
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_d3
.end method
