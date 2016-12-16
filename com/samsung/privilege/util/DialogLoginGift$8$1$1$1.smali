.class Lcom/samsung/privilege/util/DialogLoginGift$8$1$1$1;
.super Ljava/lang/Object;
.source "DialogLoginGift.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogLoginGift$8$1$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/util/DialogLoginGift$8$1$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogLoginGift$8$1$1;)V
    .registers 2

    .prologue
    .line 427
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$8$1$1$1;->a:Lcom/samsung/privilege/util/DialogLoginGift$8$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$8$1$1$1;->a:Lcom/samsung/privilege/util/DialogLoginGift$8$1$1;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$8$1$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$8$1;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$8$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$8;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$8;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 431
    return-void
.end method
