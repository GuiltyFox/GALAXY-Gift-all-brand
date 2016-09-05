.class final Lcom/squareup/picasso/Picasso$1;
.super Landroid/os/Handler;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/Picasso;
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .prologue
    .line 109
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 111
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_7e

    .line 138
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown handler message received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 113
    :sswitch_22
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 115
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    :goto_2b
    if-ge v2, v3, :cond_63

    .line 116
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/picasso/BitmapHunter;

    .line 117
    iget-object v4, v1, Lcom/squareup/picasso/BitmapHunter;->b:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v4, v1}, Lcom/squareup/picasso/Picasso;->a(Lcom/squareup/picasso/BitmapHunter;)V

    .line 115
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2b

    .line 122
    :sswitch_3c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/squareup/picasso/Action;

    .line 123
    invoke-virtual {v0}, Lcom/squareup/picasso/Action;->j()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v1, :cond_5a

    .line 124
    const-string/jumbo v1, "Main"

    const-string/jumbo v2, "canceled"

    iget-object v3, v0, Lcom/squareup/picasso/Action;->b:Lcom/squareup/picasso/Request;

    invoke-virtual {v3}, Lcom/squareup/picasso/Request;->a()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "target got garbage collected"

    invoke-static {v1, v2, v3, v4}, Lcom/squareup/picasso/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_5a
    iget-object v1, v0, Lcom/squareup/picasso/Action;->a:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0}, Lcom/squareup/picasso/Action;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/squareup/picasso/Picasso;->a(Lcom/squareup/picasso/Picasso;Ljava/lang/Object;)V

    .line 140
    :cond_63
    return-void

    .line 130
    :sswitch_64
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 132
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    :goto_6d
    if-ge v2, v3, :cond_63

    .line 133
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/picasso/Action;

    .line 134
    iget-object v4, v1, Lcom/squareup/picasso/Action;->a:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v4, v1}, Lcom/squareup/picasso/Picasso;->c(Lcom/squareup/picasso/Action;)V

    .line 132
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_6d

    .line 111
    :sswitch_data_7e
    .sparse-switch
        0x3 -> :sswitch_3c
        0x8 -> :sswitch_22
        0xd -> :sswitch_64
    .end sparse-switch
.end method
