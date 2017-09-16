.class Lcom/samsung/privilege/activity/StampDetailGiftActivity$8$1;
.super Ljava/lang/Object;
.source "StampDetailGiftActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/StampDetailGiftActivity$8;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/samsung/privilege/activity/StampDetailGiftActivity$8;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity$8;Landroid/app/Dialog;)V
    .registers 3

    .prologue
    .line 394
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$8$1;->b:Lcom/samsung/privilege/activity/StampDetailGiftActivity$8;

    iput-object p2, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$8$1;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 396
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$8$1;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 397
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$8$1;->b:Lcom/samsung/privilege/activity/StampDetailGiftActivity$8;

    iget-object v0, v0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$8;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->e(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V

    .line 399
    const-string/jumbo v0, "Stamp Profile"

    const-string/jumbo v1, "Click Renew Card Yes"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$8$1;->b:Lcom/samsung/privilege/activity/StampDetailGiftActivity$8;

    iget-object v3, v3, Lcom/samsung/privilege/activity/StampDetailGiftActivity$8;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v3}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->c(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)Lcom/bzbs/bean/StampAgency;

    move-result-object v3

    iget-object v3, v3, Lcom/bzbs/bean/StampAgency;->stampId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$8$1;->b:Lcom/samsung/privilege/activity/StampDetailGiftActivity$8;

    iget-object v3, v3, Lcom/samsung/privilege/activity/StampDetailGiftActivity$8;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

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

    .line 400
    return-void
.end method
