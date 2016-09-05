.class final Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$6;
.super Ljava/lang/Object;
.source "ShowCodeBlurDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->a(Landroid/app/Activity;Landroid/widget/ImageView;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/AnimationDrawable;)V
    .registers 2

    .prologue
    .line 714
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$6;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 719
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$6;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 720
    return-void
.end method
