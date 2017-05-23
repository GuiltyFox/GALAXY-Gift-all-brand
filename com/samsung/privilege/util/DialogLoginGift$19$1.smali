.class Lcom/samsung/privilege/util/DialogLoginGift$19$1;
.super Ljava/lang/Object;
.source "DialogLoginGift.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogLoginGift$19;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/util/DialogLoginGift$19;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogLoginGift$19;)V
    .registers 2

    .prologue
    .line 1169
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$19$1;->a:Lcom/samsung/privilege/util/DialogLoginGift$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$19$1;->a:Lcom/samsung/privilege/util/DialogLoginGift$19;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$19;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$19$1;->a:Lcom/samsung/privilege/util/DialogLoginGift$19;

    iget-object v1, v1, Lcom/samsung/privilege/util/DialogLoginGift$19;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$19$1;->a:Lcom/samsung/privilege/util/DialogLoginGift$19;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$19;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogLoginGift$19$1;->a:Lcom/samsung/privilege/util/DialogLoginGift$19;

    iget-object v3, v3, Lcom/samsung/privilege/util/DialogLoginGift$19;->b:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 1173
    return-void
.end method
