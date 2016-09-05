.class final Lcom/samsung/privilege/util/DialogSerialGift$2;
.super Ljava/lang/Object;
.source "DialogSerialGift.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogSerialGift;->b(Landroid/content/Context;Landroid/os/Handler;Lcom/bzbs/bean/Purchasing;Lcom/bzbs/bean/Campaign;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/bean/NFCTag;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/bean/Purchasing;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/bzbs/bean/Purchasing;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 308
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogSerialGift$2;->a:Lcom/bzbs/bean/Purchasing;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogSerialGift$2;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "logistic/status.html?code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogSerialGift$2;->a:Lcom/bzbs/bean/Purchasing;

    iget-object v1, v1, Lcom/bzbs/bean/Purchasing;->ParcelNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogSerialGift$2;->b:Landroid/content/Context;

    const-class v3, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 314
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialGift$2;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 316
    return-void
.end method
