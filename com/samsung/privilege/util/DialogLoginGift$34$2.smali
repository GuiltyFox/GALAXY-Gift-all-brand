.class Lcom/samsung/privilege/util/DialogLoginGift$34$2;
.super Ljava/lang/Object;
.source "DialogLoginGift.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogLoginGift$34;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/util/DialogLoginGift$34;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogLoginGift$34;)V
    .registers 2

    .prologue
    .line 2064
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$34$2;->a:Lcom/samsung/privilege/util/DialogLoginGift$34;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 2066
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2068
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$34$2;->a:Lcom/samsung/privilege/util/DialogLoginGift$34;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$34;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2069
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->a()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2071
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$34$2;->a:Lcom/samsung/privilege/util/DialogLoginGift$34;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$34;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->r(Landroid/content/Context;Z)V

    .line 2072
    return-void
.end method
