.class Lcom/facebook/login/widget/LoginButton$LoginClickListener$1;
.super Ljava/lang/Object;
.source "LoginButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/widget/LoginButton$LoginClickListener;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/login/widget/LoginButton$LoginClickListener;


# direct methods
.method constructor <init>(Lcom/facebook/login/widget/LoginButton$LoginClickListener;)V
    .registers 2

    .prologue
    .line 706
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener$1;->this$1:Lcom/facebook/login/widget/LoginButton$LoginClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .prologue
    .line 708
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener$1;->this$1:Lcom/facebook/login/widget/LoginButton$LoginClickListener;

    iget-object v0, v0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton;->getLoginManager()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 709
    return-void
.end method
