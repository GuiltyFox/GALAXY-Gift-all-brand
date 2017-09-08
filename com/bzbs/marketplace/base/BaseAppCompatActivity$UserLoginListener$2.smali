.class Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener$2;
.super Ljava/lang/Object;
.source "BaseAppCompatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener;->b(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener;)V
    .registers 2

    .prologue
    .line 417
    iput-object p1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener$2;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener$2;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener;

    iget-object v0, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->l()V

    .line 421
    return-void
.end method
