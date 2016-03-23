.class Lcom/bzbs/marketplace/base/BaseAppCompatActivity$5;
.super Ljava/lang/Object;
.source "BaseAppCompatActivity.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->onShared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/marketplace/listener/OnShareSuccessListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback",
        "<",
        "Lcom/facebook/share/Sharer$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$onShareSuccessListener:Lcom/bzbs/marketplace/listener/OnShareSuccessListener;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;Ljava/lang/String;Lcom/bzbs/marketplace/listener/OnShareSuccessListener;)V
    .registers 4
    .param p1, "this$0"    # Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$5;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iput-object p2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$5;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$5;->val$onShareSuccessListener:Lcom/bzbs/marketplace/listener/OnShareSuccessListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 3

    .prologue
    .line 582
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$5;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    # getter for: Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->access$000(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "shareDialog:= onCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .registers 4
    .param p1, "e"    # Lcom/facebook/FacebookException;

    .prologue
    .line 587
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$5;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    # getter for: Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->access$000(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "shareDialog:= onError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    return-void
.end method

.method public onSuccess(Lcom/facebook/share/Sharer$Result;)V
    .registers 5
    .param p1, "result"    # Lcom/facebook/share/Sharer$Result;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$5;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$5;->val$id:Ljava/lang/String;

    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$5;->val$onShareSuccessListener:Lcom/bzbs/marketplace/listener/OnShareSuccessListener;

    invoke-virtual {v0, v1, v2}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->onSharedSuccess(Ljava/lang/String;Lcom/bzbs/marketplace/listener/OnShareSuccessListener;)V

    .line 578
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 573
    check-cast p1, Lcom/facebook/share/Sharer$Result;

    invoke-virtual {p0, p1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$5;->onSuccess(Lcom/facebook/share/Sharer$Result;)V

    return-void
.end method
