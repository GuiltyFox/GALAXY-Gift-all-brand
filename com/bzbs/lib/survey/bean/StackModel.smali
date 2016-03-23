.class public Lcom/bzbs/lib/survey/bean/StackModel;
.super Ljava/lang/Object;
.source "StackModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/lib/survey/bean/StackModel$IntegerComparator;,
        Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;
    }
.end annotation


# instance fields
.field private listNext:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pages:Ljava/util/ArrayList;
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
.method public getListNext()Ljava/util/ArrayList;
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
    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/StackModel;->listNext:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPage(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .registers 7
    .param p2, "page"    # I
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
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v0, "listAllPage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;

    .line 143
    .local v1, "pagesEntity":Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;
    invoke-virtual {v1}, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->getPage()I

    move-result v3

    if-ne v3, p2, :cond_9

    .line 144
    invoke-virtual {v1}, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->getListStack()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_9

    .line 147
    .end local v1    # "pagesEntity":Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;
    :cond_20
    new-instance v2, Lcom/bzbs/lib/survey/bean/StackModel$IntegerComparator;

    invoke-direct {v2, p0}, Lcom/bzbs/lib/survey/bean/StackModel$IntegerComparator;-><init>(Lcom/bzbs/lib/survey/bean/StackModel;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 148
    return-object v0
.end method

.method public getPageAll(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 6
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
    .line 112
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v0, "listAllPage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;

    .line 114
    .local v1, "pagesEntity":Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;
    invoke-virtual {v1}, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->getPage()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 116
    .end local v1    # "pagesEntity":Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;
    :cond_21
    new-instance v2, Lcom/bzbs/lib/survey/bean/StackModel$IntegerComparator;

    invoke-direct {v2, p0}, Lcom/bzbs/lib/survey/bean/StackModel$IntegerComparator;-><init>(Lcom/bzbs/lib/survey/bean/StackModel;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 117
    return-object v0
.end method

.method public getPageEnoughAll(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 8
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
    .line 123
    .local p1, "listNext":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "listBack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_35

    .line 124
    const/4 v2, 0x0

    .line 125
    .local v2, "isExistData":Z
    const/4 v1, 0x0

    .local v1, "i1":I
    :goto_9
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_29

    .line 126
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 127
    const/4 v2, 0x1

    .line 125
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 130
    :cond_29
    if-nez v2, :cond_32

    .line 131
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 134
    .end local v1    # "i1":I
    .end local v2    # "isExistData":Z
    :cond_35
    new-instance v3, Lcom/bzbs/lib/survey/bean/StackModel$IntegerComparator;

    invoke-direct {v3, p0}, Lcom/bzbs/lib/survey/bean/StackModel$IntegerComparator;-><init>(Lcom/bzbs/lib/survey/bean/StackModel;)V

    invoke-static {p2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 135
    return-object p2
.end method

.method public getPages()Ljava/util/ArrayList;
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
    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/StackModel;->pages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRemovePagePosition(Ljava/util/ArrayList;I)I
    .registers 6
    .param p2, "positionPage"    # I
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
    .local p1, "pages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;>;"
    const/16 v1, -0x63

    .line 155
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_16

    .line 156
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;

    invoke-virtual {v2}, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->getPage()I

    move-result v2

    if-ne v2, p2, :cond_17

    .line 157
    move v1, v0

    .line 161
    :cond_16
    return v1

    .line 155
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public getStackAll(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 12
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
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v3, "listAllPage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_50

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;

    .line 72
    .local v4, "pagesEntity":Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;
    invoke-virtual {v4}, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->getListStack()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1d
    :goto_1d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 73
    .local v0, "integer":Ljava/lang/Integer;
    const/4 v2, 0x0

    .line 74
    .local v2, "isExist":Z
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2e
    :goto_2e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 75
    .local v1, "integer1":Ljava/lang/Integer;
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 76
    const/4 v2, 0x1

    goto :goto_2e

    .line 80
    .end local v1    # "integer1":Ljava/lang/Integer;
    :cond_4a
    if-nez v2, :cond_1d

    .line 81
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 85
    .end local v0    # "integer":Ljava/lang/Integer;
    .end local v2    # "isExist":Z
    .end local v4    # "pagesEntity":Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;
    :cond_50
    new-instance v5, Lcom/bzbs/lib/survey/bean/StackModel$IntegerComparator;

    invoke-direct {v5, p0}, Lcom/bzbs/lib/survey/bean/StackModel$IntegerComparator;-><init>(Lcom/bzbs/lib/survey/bean/StackModel;)V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 86
    return-object v3
.end method

.method public getStackBackAll(Ljava/util/ArrayList;)Ljava/util/ArrayList;
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
    .line 92
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v2, "listAllPage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;

    .line 94
    .local v3, "pagesEntity":Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;
    const/4 v1, 0x0

    .line 95
    .local v1, "isExist":Z
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1a
    :goto_1a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 96
    .local v0, "integer1":Ljava/lang/Integer;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->getPage()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 97
    const/4 v1, 0x1

    goto :goto_1a

    .line 101
    .end local v0    # "integer1":Ljava/lang/Integer;
    :cond_3a
    if-nez v1, :cond_9

    .line 102
    invoke-virtual {v3}, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->getPage()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 105
    .end local v1    # "isExist":Z
    .end local v3    # "pagesEntity":Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;
    :cond_48
    new-instance v4, Lcom/bzbs/lib/survey/bean/StackModel$IntegerComparator;

    invoke-direct {v4, p0}, Lcom/bzbs/lib/survey/bean/StackModel$IntegerComparator;-><init>(Lcom/bzbs/lib/survey/bean/StackModel;)V

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 106
    return-object v2
.end method

.method public setListNext(Ljava/util/ArrayList;)V
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
    .local p1, "listNext":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/bzbs/lib/survey/bean/StackModel;->listNext:Ljava/util/ArrayList;

    .line 20
    return-void
.end method

.method public setPages(Ljava/util/ArrayList;)V
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
    .local p1, "pages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;>;"
    iput-object p1, p0, Lcom/bzbs/lib/survey/bean/StackModel;->pages:Ljava/util/ArrayList;

    .line 24
    return-void
.end method
