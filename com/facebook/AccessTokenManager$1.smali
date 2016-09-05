.class Lcom/facebook/AccessTokenManager$1;
.super Ljava/lang/Object;
.source "AccessTokenManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/AccessTokenManager;->refreshCurrentAccessToken()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/AccessTokenManager;


# direct methods
.method constructor <init>(Lcom/facebook/AccessTokenManager;)V
    .registers 2

    .prologue
    .line 202
    iput-object p1, p0, Lcom/facebook/AccessTokenManager$1;->this$0:Lcom/facebook/AccessTokenManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/facebook/AccessTokenManager$1;->this$0:Lcom/facebook/AccessTokenManager;

    # invokes: Lcom/facebook/AccessTokenManager;->refreshCurrentAccessTokenImpl()V
    invoke-static {v0}, Lcom/facebook/AccessTokenManager;->access$000(Lcom/facebook/AccessTokenManager;)V

    .line 206
    return-void
.end method
