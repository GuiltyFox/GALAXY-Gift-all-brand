.class Lcom/samsung/privilege/util/DialogLoginGift$18$1;
.super Ljava/lang/Object;
.source "DialogLoginGift.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogLoginGift$18;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/util/DialogLoginGift$18;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogLoginGift$18;)V
    .registers 2

    .prologue
    .line 1119
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$18$1;->a:Lcom/samsung/privilege/util/DialogLoginGift$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$18$1;->a:Lcom/samsung/privilege/util/DialogLoginGift$18;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$18;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$18$1;->a:Lcom/samsung/privilege/util/DialogLoginGift$18;

    iget-boolean v1, v1, Lcom/samsung/privilege/util/DialogLoginGift$18;->d:Z

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->r(Landroid/content/Context;Z)V

    .line 1123
    return-void
.end method
