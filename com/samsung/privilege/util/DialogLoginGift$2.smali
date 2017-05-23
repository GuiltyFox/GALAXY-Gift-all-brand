.class final Lcom/samsung/privilege/util/DialogLoginGift$2;
.super Ljava/lang/Object;
.source "DialogLoginGift.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogLoginGift;->b(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/facebook/login/widget/LoginButton;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/login/widget/LoginButton;)V
    .registers 3

    .prologue
    .line 163
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogLoginGift$2;->b:Lcom/facebook/login/widget/LoginButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 166
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$2;->a:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$2;->b:Lcom/facebook/login/widget/LoginButton;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/widget/ImageButton;Lcom/facebook/login/widget/LoginButton;)V

    .line 167
    return-void
.end method
