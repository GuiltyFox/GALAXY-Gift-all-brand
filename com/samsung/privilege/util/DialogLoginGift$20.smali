.class final Lcom/samsung/privilege/util/DialogLoginGift$20;
.super Ljava/lang/Object;
.source "DialogLoginGift.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1084
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$20;->a:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogLoginGift$20;->b:Landroid/os/Handler;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogLoginGift$20;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/samsung/privilege/util/DialogLoginGift$20;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/privilege/util/DialogLoginGift$20;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$20;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1095
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$20;->b:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/util/DialogLoginGift$20$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogLoginGift$20$1;-><init>(Lcom/samsung/privilege/util/DialogLoginGift$20;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1101
    return-void
.end method
