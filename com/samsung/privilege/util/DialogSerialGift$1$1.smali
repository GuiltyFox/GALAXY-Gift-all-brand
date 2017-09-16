.class Lcom/samsung/privilege/util/DialogSerialGift$1$1;
.super Ljava/lang/Object;
.source "DialogSerialGift.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogSerialGift$1;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/util/DialogSerialGift$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogSerialGift$1;)V
    .registers 2

    .prologue
    .line 211
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogSerialGift$1$1;->a:Lcom/samsung/privilege/util/DialogSerialGift$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    .prologue
    .line 213
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 214
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialGift$1$1;->a:Lcom/samsung/privilege/util/DialogSerialGift$1;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogSerialGift$1;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    const-string/jumbo v3, "http://play.google.com/store/apps/details?id=com.samsung.android.spay"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 215
    return-void
.end method
