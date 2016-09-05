.class final Lbutterknife/internal/ViewInjector;
.super Ljava/lang/Object;
.source "ViewInjector.java"


# instance fields
.field private final className:Ljava/lang/String;

.field private final classPackage:Ljava/lang/String;

.field private final collectionBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lbutterknife/internal/CollectionBinding;",
            "[I>;"
        }
    .end annotation
.end field

.field private parentInjector:Ljava/lang/String;

.field private final targetClass:Ljava/lang/String;

.field private final viewIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lbutterknife/internal/ViewInjection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lbutterknife/internal/ViewInjector;->viewIdMap:Ljava/util/Map;

    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lbutterknife/internal/ViewInjector;->collectionBindings:Ljava/util/Map;

    .line 27
    iput-object p1, p0, Lbutterknife/internal/ViewInjector;->classPackage:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lbutterknife/internal/ViewInjector;->className:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lbutterknife/internal/ViewInjector;->targetClass:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private emitCollectionBinding(Ljava/lang/StringBuilder;Lbutterknife/internal/CollectionBinding;[I)V
    .registers 7

    .prologue
    .line 128
    const-string/jumbo v0, "    target."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lbutterknife/internal/CollectionBinding;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    sget-object v0, Lbutterknife/internal/ViewInjector$1;->$SwitchMap$butterknife$internal$CollectionBinding$Kind:[I

    invoke-virtual {p2}, Lbutterknife/internal/CollectionBinding;->getKind()Lbutterknife/internal/CollectionBinding$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lbutterknife/internal/CollectionBinding$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_ac

    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown kind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lbutterknife/internal/CollectionBinding;->getKind()Lbutterknife/internal/CollectionBinding$Kind;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :pswitch_42
    const-string/jumbo v0, "Finder.arrayOf("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :goto_48
    const/4 v0, 0x0

    :goto_49
    array-length v1, p3

    if-ge v0, v1, :cond_a4

    .line 142
    if-lez v0, :cond_53

    .line 143
    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    :cond_53
    const-string/jumbo v1, "\n        finder.<"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 146
    invoke-virtual {p2}, Lbutterknife/internal/CollectionBinding;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ">"

    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 148
    invoke-virtual {p2}, Lbutterknife/internal/CollectionBinding;->isRequired()Z

    move-result v1

    if-eqz v1, :cond_a0

    const-string/jumbo v1, "findRequiredView"

    :goto_72
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "(source, "

    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p3, v0

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", \""

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p1, v1}, Lbutterknife/internal/ViewInjector;->emitHumanDescription(Ljava/lang/StringBuilder;Ljava/util/Collection;)V

    .line 153
    const-string/jumbo v1, "\")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 135
    :pswitch_99
    const-string/jumbo v0, "Finder.listOf("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    .line 148
    :cond_a0
    const-string/jumbo v1, "findOptionalView"

    goto :goto_72

    .line 156
    :cond_a4
    const-string/jumbo v0, "\n    );\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    return-void

    .line 130
    nop

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_42
        :pswitch_99
    .end packed-switch
.end method

.method static emitHumanDescription(Ljava/lang/StringBuilder;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Collection",
            "<+",
            "Lbutterknife/internal/Binding;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 391
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 392
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_68

    .line 402
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    move v1, v0

    :goto_11
    if-ge v1, v3, :cond_43

    .line 403
    if-eqz v1, :cond_1b

    .line 404
    const-string/jumbo v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    :cond_1b
    add-int/lit8 v0, v3, -0x1

    if-ne v1, v0, :cond_25

    .line 407
    const-string/jumbo v0, "and "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    :cond_25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbutterknife/internal/Binding;

    invoke-interface {v0}, Lbutterknife/internal/Binding;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    .line 394
    :pswitch_36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbutterknife/internal/Binding;

    invoke-interface {v0}, Lbutterknife/internal/Binding;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    :cond_43
    :goto_43
    return-void

    .line 397
    :pswitch_44
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbutterknife/internal/Binding;

    invoke-interface {v0}, Lbutterknife/internal/Binding;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " and "

    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 399
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbutterknife/internal/Binding;

    invoke-interface {v0}, Lbutterknife/internal/Binding;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_43

    .line 392
    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_36
        :pswitch_44
    .end packed-switch
.end method

.method private emitInject(Ljava/lang/StringBuilder;)V
    .registers 5

    .prologue
    .line 103
    const-string/jumbo v0, "  @Override "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "public void inject(final Finder finder, final T target, Object source) {\n"

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v0, p0, Lbutterknife/internal/ViewInjector;->parentInjector:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 108
    const-string/jumbo v0, "    super.inject(finder, target, source);\n\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_17
    const-string/jumbo v0, "    View view;\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v0, p0, Lbutterknife/internal/ViewInjector;->viewIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbutterknife/internal/ViewInjection;

    .line 116
    invoke-direct {p0, p1, v0}, Lbutterknife/internal/ViewInjector;->emitViewInjection(Ljava/lang/StringBuilder;Lbutterknife/internal/ViewInjection;)V

    goto :goto_27

    .line 120
    :cond_37
    iget-object v0, p0, Lbutterknife/internal/ViewInjector;->collectionBindings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 121
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbutterknife/internal/CollectionBinding;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-direct {p0, p1, v1, v0}, Lbutterknife/internal/ViewInjector;->emitCollectionBinding(Ljava/lang/StringBuilder;Lbutterknife/internal/CollectionBinding;[I)V

    goto :goto_41

    .line 124
    :cond_5d
    const-string/jumbo v0, "  }\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    return-void
.end method

.method private emitListenerBindings(Ljava/lang/StringBuilder;Lbutterknife/internal/ViewInjection;)V
    .registers 19

    .prologue
    .line 207
    .line 208
    invoke-virtual/range {p2 .. p2}, Lbutterknife/internal/ViewInjection;->getListenerBindings()Ljava/util/Map;

    move-result-object v2

    .line 209
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 348
    :cond_a
    :goto_a
    return-void

    .line 213
    :cond_b
    const-string/jumbo v1, ""

    .line 216
    invoke-virtual/range {p2 .. p2}, Lbutterknife/internal/ViewInjection;->getRequiredBindings()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    .line 217
    if-eqz v7, :cond_2ba

    .line 218
    const-string/jumbo v1, "    if (view != null) {\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const-string/jumbo v1, "  "

    move-object v5, v1

    .line 223
    :goto_24
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2ae

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 224
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbutterknife/internal/ListenerClass;

    .line 225
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 228
    const-string/jumbo v3, "android.view.View"

    invoke-interface {v2}, Lbutterknife/internal/ListenerClass;->targetType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_98

    const/4 v3, 0x1

    .line 229
    :goto_52
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "    "

    .line 230
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    if-eqz v3, :cond_a9

    .line 232
    const-string/jumbo v4, "(("

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lbutterknife/internal/ListenerClass;->targetType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-interface {v2}, Lbutterknife/internal/ListenerClass;->genericArguments()I

    move-result v4

    if-lez v4, :cond_a1

    .line 234
    const/16 v4, 0x3c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    const/4 v4, 0x0

    :goto_7e
    invoke-interface {v2}, Lbutterknife/internal/ListenerClass;->genericArguments()I

    move-result v6

    if-ge v4, v6, :cond_9a

    .line 236
    if-lez v4, :cond_8e

    .line 237
    const-string/jumbo v6, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_8e
    const/16 v6, 0x3f

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    add-int/lit8 v4, v4, 0x1

    goto :goto_7e

    .line 228
    :cond_98
    const/4 v3, 0x0

    goto :goto_52

    .line 241
    :cond_9a
    const/16 v4, 0x3e

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    :cond_a1
    const-string/jumbo v4, ") "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_a9
    const-string/jumbo v4, "view"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    if-eqz v3, :cond_ba

    .line 247
    const/16 v3, 0x29

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    :cond_ba
    const/16 v3, 0x2e

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 250
    invoke-interface {v2}, Lbutterknife/internal/ListenerClass;->setter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "(\n"

    .line 251
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "      new "

    .line 255
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 256
    invoke-interface {v2}, Lbutterknife/internal/ListenerClass;->type()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "() {\n"

    .line 257
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-static {v2}, Lbutterknife/internal/ViewInjector;->getListenerMethods(Lbutterknife/internal/ListenerClass;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_f3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbutterknife/internal/ListenerMethod;

    .line 261
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "        @Override public "

    .line 262
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 263
    invoke-interface {v2}, Lbutterknife/internal/ListenerMethod;->returnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    .line 264
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 265
    invoke-interface {v2}, Lbutterknife/internal/ListenerMethod;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "(\n"

    .line 266
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-interface {v2}, Lbutterknife/internal/ListenerMethod;->parameters()[Ljava/lang/String;

    move-result-object v4

    .line 270
    const/4 v3, 0x0

    array-length v6, v4

    :goto_12e
    if-ge v3, v6, :cond_162

    .line 271
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "          "

    .line 272
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v4, v3

    .line 273
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " p"

    .line 274
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 275
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 276
    add-int/lit8 v10, v6, -0x1

    if-ge v3, v10, :cond_158

    .line 277
    const/16 v10, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    :cond_158
    const/16 v10, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 270
    add-int/lit8 v3, v3, 0x1

    goto :goto_12e

    .line 283
    :cond_162
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "        ) {\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "          "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const-string/jumbo v3, "void"

    invoke-interface {v2}, Lbutterknife/internal/ListenerMethod;->returnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24c

    const/4 v3, 0x1

    .line 288
    :goto_188
    if-eqz v3, :cond_192

    .line 289
    const-string/jumbo v4, "return "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_192
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27a

    .line 293
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 294
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 296
    :cond_1a2
    :goto_1a2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28b

    .line 297
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbutterknife/internal/ListenerBinding;

    .line 298
    const-string/jumbo v4, "target."

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lbutterknife/internal/ListenerBinding;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x28

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v3}, Lbutterknife/internal/ListenerBinding;->getParameters()Ljava/util/List;

    move-result-object v11

    .line 300
    invoke-interface {v2}, Lbutterknife/internal/ListenerMethod;->parameters()[Ljava/lang/String;

    move-result-object v12

    .line 301
    const/4 v4, 0x0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    move v6, v4

    :goto_1d2
    if-ge v6, v13, :cond_25b

    .line 302
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbutterknife/internal/Parameter;

    .line 303
    invoke-virtual {v4}, Lbutterknife/internal/Parameter;->getListenerPosition()I

    move-result v14

    .line 305
    aget-object v15, v12, v14

    invoke-virtual {v4, v15}, Lbutterknife/internal/Parameter;->requiresCast(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_24f

    .line 306
    const-string/jumbo v15, "finder.<"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 307
    invoke-virtual {v4}, Lbutterknife/internal/Parameter;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v15, ">castParam(p"

    .line 308
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 309
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v15, ", \""

    .line 310
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 311
    invoke-interface {v2}, Lbutterknife/internal/ListenerMethod;->name()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v15, "\", "

    .line 312
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 313
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v14, ", \""

    .line 314
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 315
    invoke-virtual {v3}, Lbutterknife/internal/ListenerBinding;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v14, "\", "

    .line 316
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 317
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v14, ")"

    .line 318
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :goto_23c
    add-int/lit8 v4, v13, -0x1

    if-ge v6, v4, :cond_248

    .line 324
    const-string/jumbo v4, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    :cond_248
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_1d2

    .line 287
    :cond_24c
    const/4 v3, 0x0

    goto/16 :goto_188

    .line 320
    :cond_24f
    const/16 v4, 0x70

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_23c

    .line 327
    :cond_25b
    const-string/jumbo v3, ");"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a2

    .line 329
    const-string/jumbo v3, "\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "          "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1a2

    .line 332
    :cond_27a
    if-eqz v3, :cond_28b

    .line 333
    invoke-interface {v2}, Lbutterknife/internal/ListenerMethod;->defaultReturn()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 335
    :cond_28b
    const/16 v2, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "        }\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f3

    .line 342
    :cond_2a0
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "      });\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2c

    .line 345
    :cond_2ae
    if-eqz v7, :cond_a

    .line 346
    const-string/jumbo v1, "    }\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :cond_2ba
    move-object v5, v1

    goto/16 :goto_24
.end method

.method private emitReset(Ljava/lang/StringBuilder;)V
    .registers 6

    .prologue
    .line 375
    const-string/jumbo v0, "  @Override public void reset(T target) {\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    iget-object v0, p0, Lbutterknife/internal/ViewInjector;->parentInjector:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 377
    const-string/jumbo v0, "    super.reset(target);\n\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    :cond_10
    iget-object v0, p0, Lbutterknife/internal/ViewInjector;->viewIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbutterknife/internal/ViewInjection;

    .line 380
    invoke-virtual {v0}, Lbutterknife/internal/ViewInjection;->getViewBindings()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbutterknife/internal/ViewBinding;

    .line 381
    const-string/jumbo v3, "    target."

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lbutterknife/internal/ViewBinding;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " = null;\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e

    .line 384
    :cond_50
    iget-object v0, p0, Lbutterknife/internal/ViewInjector;->collectionBindings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbutterknife/internal/CollectionBinding;

    .line 385
    const-string/jumbo v2, "    target."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lbutterknife/internal/CollectionBinding;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " = null;\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5a

    .line 387
    :cond_7c
    const-string/jumbo v0, "  }\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    return-void
.end method

.method private emitViewBindings(Ljava/lang/StringBuilder;Lbutterknife/internal/ViewInjection;)V
    .registers 8

    .prologue
    .line 184
    invoke-virtual {p2}, Lbutterknife/internal/ViewInjection;->getViewBindings()Ljava/util/Collection;

    move-result-object v1

    .line 185
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 204
    :cond_a
    return-void

    .line 189
    :cond_b
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbutterknife/internal/ViewBinding;

    .line 190
    const-string/jumbo v3, "    target."

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 191
    invoke-virtual {v0}, Lbutterknife/internal/ViewBinding;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = "

    .line 192
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0}, Lbutterknife/internal/ViewBinding;->requiresCast()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 194
    const-string/jumbo v0, "finder.castView(view"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", "

    .line 195
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 196
    invoke-virtual {p2}, Lbutterknife/internal/ViewInjection;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", \""

    .line 197
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-static {p1, v1}, Lbutterknife/internal/ViewInjector;->emitHumanDescription(Ljava/lang/StringBuilder;Ljava/util/Collection;)V

    .line 199
    const-string/jumbo v0, "\");\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 201
    :cond_5c
    const-string/jumbo v0, "view;\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f
.end method

.method private emitViewInjection(Ljava/lang/StringBuilder;Lbutterknife/internal/ViewInjection;)V
    .registers 6

    .prologue
    .line 160
    const-string/jumbo v0, "    view = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {p2}, Lbutterknife/internal/ViewInjection;->getRequiredBindings()Ljava/util/List;

    move-result-object v0

    .line 163
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 164
    const-string/jumbo v0, "finder.findOptionalView(source, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 165
    invoke-virtual {p2}, Lbutterknife/internal/ViewInjection;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", null);\n"

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :goto_25
    invoke-direct {p0, p1, p2}, Lbutterknife/internal/ViewInjector;->emitViewBindings(Ljava/lang/StringBuilder;Lbutterknife/internal/ViewInjection;)V

    .line 180
    invoke-direct {p0, p1, p2}, Lbutterknife/internal/ViewInjector;->emitListenerBindings(Ljava/lang/StringBuilder;Lbutterknife/internal/ViewInjection;)V

    .line 181
    return-void

    .line 168
    :cond_2c
    invoke-virtual {p2}, Lbutterknife/internal/ViewInjection;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3a

    .line 169
    const-string/jumbo v0, "target;\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 171
    :cond_3a
    const-string/jumbo v1, "finder.findRequiredView(source, "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 172
    invoke-virtual {p2}, Lbutterknife/internal/ViewInjection;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", \""

    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-static {p1, v0}, Lbutterknife/internal/ViewInjector;->emitHumanDescription(Ljava/lang/StringBuilder;Ljava/util/Collection;)V

    .line 175
    const-string/jumbo v0, "\");\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25
.end method

.method static getListenerMethods(Lbutterknife/internal/ListenerClass;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbutterknife/internal/ListenerClass;",
            ")",
            "Ljava/util/List",
            "<",
            "Lbutterknife/internal/ListenerMethod;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 351
    invoke-interface {p0}, Lbutterknife/internal/ListenerClass;->method()[Lbutterknife/internal/ListenerMethod;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v2, :cond_12

    .line 352
    invoke-interface {p0}, Lbutterknife/internal/ListenerClass;->method()[Lbutterknife/internal/ListenerMethod;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 368
    :goto_11
    return-object v0

    .line 356
    :cond_12
    :try_start_12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 357
    invoke-interface {p0}, Lbutterknife/internal/ListenerClass;->callbacks()Ljava/lang/Class;

    move-result-object v4

    .line 358
    invoke-virtual {v4}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    array-length v5, v0

    move v3, v1

    :goto_23
    if-ge v3, v5, :cond_79

    aget-object v6, v0, v3

    .line 359
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 360
    const-class v7, Lbutterknife/internal/ListenerMethod;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lbutterknife/internal/ListenerMethod;

    .line 361
    if-nez v1, :cond_72

    .line 362
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "@%s\'s %s.%s missing @%s annotation."

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 363
    invoke-virtual {v4}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 364
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Lbutterknife/internal/ListenerMethod;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 362
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_12 .. :try_end_6b} :catch_6b

    .line 369
    :catch_6b
    move-exception v0

    .line 370
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 366
    :cond_72
    :try_start_72
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_75
    .catch Ljava/lang/NoSuchFieldException; {:try_start_72 .. :try_end_75} :catch_6b

    .line 358
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_23

    :cond_79
    move-object v0, v2

    .line 368
    goto :goto_11
.end method

.method private getOrCreateViewInjection(I)Lbutterknife/internal/ViewInjection;
    .registers 5

    .prologue
    .line 60
    iget-object v0, p0, Lbutterknife/internal/ViewInjector;->viewIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbutterknife/internal/ViewInjection;

    .line 61
    if-nez v0, :cond_1c

    .line 62
    new-instance v0, Lbutterknife/internal/ViewInjection;

    invoke-direct {v0, p1}, Lbutterknife/internal/ViewInjection;-><init>(I)V

    .line 63
    iget-object v1, p0, Lbutterknife/internal/ViewInjector;->viewIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_1c
    return-object v0
.end method


# virtual methods
.method addCollection([ILbutterknife/internal/CollectionBinding;)V
    .registers 4

    .prologue
    .line 48
    iget-object v0, p0, Lbutterknife/internal/ViewInjector;->collectionBindings:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method addListener(ILbutterknife/internal/ListenerClass;Lbutterknife/internal/ListenerMethod;Lbutterknife/internal/ListenerBinding;)Z
    .registers 8

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lbutterknife/internal/ViewInjector;->getOrCreateViewInjection(I)Lbutterknife/internal/ViewInjection;

    move-result-object v0

    .line 39
    invoke-virtual {v0, p2, p3}, Lbutterknife/internal/ViewInjection;->hasListenerBinding(Lbutterknife/internal/ListenerClass;Lbutterknife/internal/ListenerMethod;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string/jumbo v1, "void"

    .line 40
    invoke-interface {p3}, Lbutterknife/internal/ListenerMethod;->returnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 41
    const/4 v0, 0x0

    .line 44
    :goto_18
    return v0

    .line 43
    :cond_19
    invoke-virtual {v0, p2, p3, p4}, Lbutterknife/internal/ViewInjection;->addListenerBinding(Lbutterknife/internal/ListenerClass;Lbutterknife/internal/ListenerMethod;Lbutterknife/internal/ListenerBinding;)V

    .line 44
    const/4 v0, 0x1

    goto :goto_18
.end method

.method addView(ILbutterknife/internal/ViewBinding;)V
    .registers 4

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lbutterknife/internal/ViewInjector;->getOrCreateViewInjection(I)Lbutterknife/internal/ViewInjection;

    move-result-object v0

    invoke-virtual {v0, p2}, Lbutterknife/internal/ViewInjection;->addViewBinding(Lbutterknife/internal/ViewBinding;)V

    .line 34
    return-void
.end method

.method brewJava()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0xa

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    const-string/jumbo v1, "// Generated code from Butter Knife. Do not modify!\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string/jumbo v1, "package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbutterknife/internal/ViewInjector;->classPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string/jumbo v1, "import android.view.View;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string/jumbo v1, "import butterknife.ButterKnife.Finder;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v1, p0, Lbutterknife/internal/ViewInjector;->parentInjector:Ljava/lang/String;

    if-nez v1, :cond_36

    .line 80
    const-string/jumbo v1, "import butterknife.ButterKnife.Injector;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :cond_36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    const-string/jumbo v1, "public class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbutterknife/internal/ViewInjector;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string/jumbo v1, "<T extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbutterknife/internal/ViewInjector;->targetClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lbutterknife/internal/ViewInjector;->parentInjector:Ljava/lang/String;

    if-eqz v1, :cond_89

    .line 88
    const-string/jumbo v1, " extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbutterknife/internal/ViewInjector;->parentInjector:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<T>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :goto_6f
    const-string/jumbo v1, " {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-direct {p0, v0}, Lbutterknife/internal/ViewInjector;->emitInject(Ljava/lang/StringBuilder;)V

    .line 95
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {p0, v0}, Lbutterknife/internal/ViewInjector;->emitReset(Ljava/lang/StringBuilder;)V

    .line 98
    const-string/jumbo v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 90
    :cond_89
    const-string/jumbo v1, " implements Injector<T>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6f
.end method

.method getFqcn()Ljava/lang/String;
    .registers 3

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbutterknife/internal/ViewInjector;->classPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbutterknife/internal/ViewInjector;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getViewInjection(I)Lbutterknife/internal/ViewInjection;
    .registers 4

    .prologue
    .line 56
    iget-object v0, p0, Lbutterknife/internal/ViewInjector;->viewIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbutterknife/internal/ViewInjection;

    return-object v0
.end method

.method setParentInjector(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Lbutterknife/internal/ViewInjector;->parentInjector:Ljava/lang/String;

    .line 53
    return-void
.end method
