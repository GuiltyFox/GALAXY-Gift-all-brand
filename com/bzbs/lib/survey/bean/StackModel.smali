.class public Lcom/bzbs/lib/survey/bean/StackModel;
.super Ljava/lang/Object;
.source "StackModel.java"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/StackModel;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;

    .line 143
    invoke-virtual {v0}, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->a()I

    move-result v3

    if-ne v3, p2, :cond_2b

    .line 144
    invoke-virtual {v0}, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->b()Ljava/util/ArrayList;

    move-result-object v0

    :goto_20
    move-object v1, v0

    .line 146
    goto :goto_a

    .line 147
    :cond_22
    new-instance v0, Lcom/bzbs/lib/survey/bean/StackModel$IntegerComparator;

    invoke-direct {v0, p0}, Lcom/bzbs/lib/survey/bean/StackModel$IntegerComparator;-><init>(Lcom/bzbs/lib/survey/bean/StackModel;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 148
    return-object v1

    :cond_2b
    move-object v0, v1

    goto :goto_20
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 123
    move v0, v1

    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_36

    move v2, v1

    move v3, v1

    .line 125
    :goto_a
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2a

    .line 126
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 127
    const/4 v3, 0x1

    .line 125
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 130
    :cond_2a
    if-nez v3, :cond_33

    .line 131
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 134
    :cond_36
    new-instance v0, Lcom/bzbs/lib/survey/bean/StackModel$IntegerComparator;

    invoke-direct {v0, p0}, Lcom/bzbs/lib/survey/bean/StackModel$IntegerComparator;-><init>(Lcom/bzbs/lib/survey/bean/StackModel;)V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 135
    return-object p2
.end method

.method public a(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    iput-object p1, p0, Lcom/bzbs/lib/survey/bean/StackModel;->a:Ljava/util/ArrayList;

    .line 20
    return-void
.end method

.method public b(Ljava/util/ArrayList;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 154
    const/16 v2, -0x63

    .line 155
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1b

    .line 156
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->a()I

    move-result v0

    if-ne v0, p2, :cond_17

    .line 161
    :goto_16
    return v1

    .line 155
    :cond_17
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_1b
    move v1, v2

    goto :goto_16
.end method

.method public b()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/StackModel;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public b(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    iput-object p1, p0, Lcom/bzbs/lib/survey/bean/StackModel;->b:Ljava/util/ArrayList;

    .line 24
    return-void
.end method

.method public c(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;

    .line 72
    invoke-virtual {v0}, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1d
    :goto_1d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 73
    const/4 v1, 0x0

    .line 74
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v1

    :goto_2f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 75
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 76
    const/4 v1, 0x1

    :goto_4a
    move v2, v1

    .line 78
    goto :goto_2f

    .line 80
    :cond_4c
    if-nez v2, :cond_1d

    .line 81
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 85
    :cond_52
    new-instance v0, Lcom/bzbs/lib/survey/bean/StackModel$IntegerComparator;

    invoke-direct {v0, p0}, Lcom/bzbs/lib/survey/bean/StackModel$IntegerComparator;-><init>(Lcom/bzbs/lib/survey/bean/StackModel;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 86
    return-object v3

    :cond_5b
    move v1, v2

    goto :goto_4a
.end method

.method public d(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 93
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;

    .line 94
    const/4 v1, 0x0

    .line 95
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    :goto_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 96
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 97
    const/4 v1, 0x1

    :goto_3a
    move v2, v1

    .line 99
    goto :goto_1b

    .line 101
    :cond_3c
    if-nez v2, :cond_9

    .line 102
    invoke-virtual {v0}, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 105
    :cond_4a
    new-instance v0, Lcom/bzbs/lib/survey/bean/StackModel$IntegerComparator;

    invoke-direct {v0, p0}, Lcom/bzbs/lib/survey/bean/StackModel$IntegerComparator;-><init>(Lcom/bzbs/lib/survey/bean/StackModel;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 106
    return-object v3

    :cond_53
    move v1, v2

    goto :goto_3a
.end method
