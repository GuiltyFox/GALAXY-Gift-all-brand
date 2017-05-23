.class Lcom/bzbs/marketplace/base/BaseAppCompatActivity$6;
.super Ljava/lang/Object;
.source "BaseAppCompatActivity.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/marketplace/listener/OnShareSuccessListener;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bzbs/marketplace/listener/OnShareSuccessListener;

.field final synthetic c:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;Ljava/lang/String;Lcom/bzbs/marketplace/listener/OnShareSuccessListener;)V
    .registers 4

    .prologue
    .line 619
    iput-object p1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$6;->c:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iput-object p2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$6;->b:Lcom/bzbs/marketplace/listener/OnShareSuccessListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/share/Sharer$Result;)V
    .registers 5

    .prologue
    .line 623
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$6;->c:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$6;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$6;->b:Lcom/bzbs/marketplace/listener/OnShareSuccessListener;

    invoke-virtual {v0, v1, v2}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->a(Ljava/lang/String;Lcom/bzbs/marketplace/listener/OnShareSuccessListener;)V

    .line 624
    return-void
.end method

.method public onCancel()V
    .registers 3

    .prologue
    .line 628
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$6;->c:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->a(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "shareDialog:= onCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .registers 4

    .prologue
    .line 633
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$6;->c:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->a(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "shareDialog:= onError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 619
    check-cast p1, Lcom/facebook/share/Sharer$Result;

    invoke-virtual {p0, p1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$6;->a(Lcom/facebook/share/Sharer$Result;)V

    return-void
.end method
