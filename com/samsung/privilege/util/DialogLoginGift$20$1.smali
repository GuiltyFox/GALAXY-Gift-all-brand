.class Lcom/samsung/privilege/util/DialogLoginGift$20$1;
.super Ljava/lang/Object;
.source "DialogLoginGift.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogLoginGift$20;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/util/DialogLoginGift$20;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogLoginGift$20;)V
    .registers 2

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$20$1;->a:Lcom/samsung/privilege/util/DialogLoginGift$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$20$1;->a:Lcom/samsung/privilege/util/DialogLoginGift$20;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$20;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$20$1;->a:Lcom/samsung/privilege/util/DialogLoginGift$20;

    iget-object v1, v1, Lcom/samsung/privilege/util/DialogLoginGift$20;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$20$1;->a:Lcom/samsung/privilege/util/DialogLoginGift$20;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$20;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogLoginGift$20$1;->a:Lcom/samsung/privilege/util/DialogLoginGift$20;

    iget-object v3, v3, Lcom/samsung/privilege/util/DialogLoginGift$20;->b:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 1099
    return-void
.end method
