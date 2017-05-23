.class final Lcom/samsung/privilege/util/AnimationPointGift$4;
.super Ljava/lang/Object;
.source "AnimationPointGift.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/AnimationPointGift;->a(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 516
    iput-object p1, p0, Lcom/samsung/privilege/util/AnimationPointGift$4;->a:Landroid/app/Activity;

    iput p2, p0, Lcom/samsung/privilege/util/AnimationPointGift$4;->b:I

    iput-object p3, p0, Lcom/samsung/privilege/util/AnimationPointGift$4;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 519
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationPointGift$4;->a:Landroid/app/Activity;

    if-eqz v0, :cond_b7

    .line 520
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationPointGift$4;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 521
    const v2, 0x7f040119

    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationPointGift$4;->a:Landroid/app/Activity;

    const v3, 0x7f1002e1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 523
    const v0, 0x7f1002e2

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 524
    const v0, 0x7f1002e5

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 525
    const v0, 0x7f1002e6

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 526
    const v0, 0x7f1002e7

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 527
    const v0, 0x7f1002e9

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 528
    const v0, 0x7f1002e8

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 529
    const v0, 0x7f1002f4

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 530
    const v7, 0x7f1002e3

    invoke-virtual {v9, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 531
    const v8, 0x7f1002f2

    invoke-virtual {v9, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 538
    iget-object v10, p0, Lcom/samsung/privilege/util/AnimationPointGift$4;->a:Landroid/app/Activity;

    const v11, 0x7f05000e

    invoke-static {v10, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v10

    .line 539
    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 541
    iget v8, p0, Lcom/samsung/privilege/util/AnimationPointGift$4;->b:I

    if-le v8, v13, :cond_b8

    .line 542
    const v8, 0x7f02011c

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 547
    :goto_85
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationPointGift$4;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "comment"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 548
    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 549
    const v0, 0x7f020119

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 560
    :goto_9d
    iget v0, p0, Lcom/samsung/privilege/util/AnimationPointGift$4;->b:I

    invoke-static/range {v0 .. v6}, Lcom/bzbs/lib/survey/util/AnimationPoint;->b(ILandroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 562
    new-instance v0, Landroid/widget/Toast;

    iget-object v1, p0, Lcom/samsung/privilege/util/AnimationPointGift$4;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 563
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v12, v12}, Landroid/widget/Toast;->setGravity(III)V

    .line 564
    invoke-virtual {v0, v13}, Landroid/widget/Toast;->setDuration(I)V

    .line 565
    invoke-virtual {v0, v9}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 566
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 570
    :cond_b7
    return-void

    .line 544
    :cond_b8
    const v8, 0x7f02011b

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_85

    .line 550
    :cond_bf
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationPointGift$4;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "like"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 551
    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 552
    const v0, 0x7f02011a

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9d

    .line 553
    :cond_d8
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationPointGift$4;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "weeklytopup"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 554
    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 555
    const v0, 0x7f02011d

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9d

    .line 557
    :cond_f1
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9d
.end method
