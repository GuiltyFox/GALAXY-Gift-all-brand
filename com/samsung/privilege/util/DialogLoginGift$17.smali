.class final Lcom/samsung/privilege/util/DialogLoginGift$17;
.super Ljava/lang/Object;
.source "DialogLoginGift.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Landroid/app/Dialog;Landroid/widget/ImageView;Landroid/content/Context;Z)V
    .registers 5

    .prologue
    .line 1117
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->a:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->c:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1120
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->a()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1122
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/privilege/util/DialogLoginGift$17$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogLoginGift$17$1;-><init>(Lcom/samsung/privilege/util/DialogLoginGift$17;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1128
    return-void
.end method
