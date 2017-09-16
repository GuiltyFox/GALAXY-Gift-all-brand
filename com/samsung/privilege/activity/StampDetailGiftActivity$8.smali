.class Lcom/samsung/privilege/activity/StampDetailGiftActivity$8;
.super Ljava/lang/Object;
.source "StampDetailGiftActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/StampDetailGiftActivity;->k()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V
    .registers 2

    .prologue
    .line 387
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$8;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 390
    new-instance v1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$8;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    const v2, 0x1030010

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 391
    const v0, 0x7f0400d6

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 393
    const v0, 0x7f1003a4

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 394
    new-instance v2, Lcom/samsung/privilege/activity/StampDetailGiftActivity$8$1;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$8$1;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity$8;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    const v0, 0x7f1003a6

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 404
    new-instance v2, Lcom/samsung/privilege/activity/StampDetailGiftActivity$8$2;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$8$2;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity$8;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 413
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 414
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 416
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 418
    const-string/jumbo v0, "Stamp Profile"

    const-string/jumbo v1, "Click Renew Card"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$8;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v3}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->c(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)Lcom/bzbs/bean/StampAgency;

    move-result-object v3

    iget-object v3, v3, Lcom/bzbs/bean/StampAgency;->stampId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$8;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v3}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->c(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)Lcom/bzbs/bean/StampAgency;

    move-result-object v3

    iget-object v3, v3, Lcom/bzbs/bean/StampAgency;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 419
    return-void
.end method
