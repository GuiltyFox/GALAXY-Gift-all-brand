.class Lcom/samsung/privilege/util/DialogSerialGift$12$2;
.super Ljava/lang/Object;
.source "DialogSerialGift.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogSerialGift$12;->run()V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/util/DialogSerialGift$12;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogSerialGift$12;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 566
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogSerialGift$12$2;->b:Lcom/samsung/privilege/util/DialogSerialGift$12;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogSerialGift$12$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 568
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialGift$12$2;->b:Lcom/samsung/privilege/util/DialogSerialGift$12;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogSerialGift$12;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogSerialGift$12$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    return-void
.end method
