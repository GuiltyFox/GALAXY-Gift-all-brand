.class Lcom/samsung/privilege/util/DialogLoginGift$8$1$2;
.super Ljava/lang/Object;
.source "DialogLoginGift.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogLoginGift$8$1;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/util/DialogLoginGift$8$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogLoginGift$8$1;)V
    .registers 2

    .prologue
    .line 463
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$8$1$2;->a:Lcom/samsung/privilege/util/DialogLoginGift$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 465
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$8$1$2;->a:Lcom/samsung/privilege/util/DialogLoginGift$8$1;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$8$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$8;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$8;->d:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 466
    return-void
.end method
