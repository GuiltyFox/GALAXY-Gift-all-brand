.class Landroid/support/v7/app/AlertController$5;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AlertController;->a(Landroid/view/ViewGroup;Landroid/view/View;II)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/support/v7/app/AlertController;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 575
    iput-object p1, p0, Landroid/support/v7/app/AlertController$5;->c:Landroid/support/v7/app/AlertController;

    iput-object p2, p0, Landroid/support/v7/app/AlertController$5;->a:Landroid/view/View;

    iput-object p3, p0, Landroid/support/v7/app/AlertController$5;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 578
    iget-object v0, p0, Landroid/support/v7/app/AlertController$5;->c:Landroid/support/v7/app/AlertController;

    invoke-static {v0}, Landroid/support/v7/app/AlertController;->j(Landroid/support/v7/app/AlertController;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/AlertController$5;->a:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/app/AlertController$5;->b:Landroid/view/View;

    invoke-static {v0, v1, v2}, Landroid/support/v7/app/AlertController;->a(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 579
    return-void
.end method
