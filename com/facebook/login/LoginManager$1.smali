.class Lcom/facebook/login/LoginManager$1;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/facebook/internal/CallbackManagerImpl$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/LoginManager;

.field final synthetic val$callback:Lcom/facebook/FacebookCallback;


# direct methods
.method constructor <init>(Lcom/facebook/login/LoginManager;Lcom/facebook/FacebookCallback;)V
    .registers 3

    .prologue
    .line 133
    iput-object p1, p0, Lcom/facebook/login/LoginManager$1;->this$0:Lcom/facebook/login/LoginManager;

    iput-object p2, p0, Lcom/facebook/login/LoginManager$1;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)Z
    .registers 5

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/login/LoginManager$1;->this$0:Lcom/facebook/login/LoginManager;

    iget-object v1, p0, Lcom/facebook/login/LoginManager$1;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-virtual {v0, p1, p2, v1}, Lcom/facebook/login/LoginManager;->onActivityResult(ILandroid/content/Intent;Lcom/facebook/FacebookCallback;)Z

    move-result v0

    return v0
.end method