package com.enderdevelopment.plugin;

import org.bukkit.plugin.java.JavaPlugin;

/**
 * O Papel Debaixo da Cama - horror add-on.
 *
 * The actual game content is delivered as a Minecraft Bedrock .mcaddon
 * (Behavior Pack + Resource Pack) located under the "BP" and "RP" folders
 * of this repository. This Java plugin only keeps the required Bukkit
 * build target present and functional; see onEnable() for the build steps.
 */
public final class Main extends JavaPlugin {

    @Override
    public void onEnable() {
        getLogger().info("O Papel Debaixo da Cama - Bedrock add-on loaded.");
        getLogger().info("To install: zip the 'BP' and 'RP' folders into a single file ending in .mcaddon");
        getLogger().info("and open it on Minecraft Bedrock (Android). Run /function nightmare/build then /function nightmare/start.");
    }

    @Override
    public void onDisable() {
        getLogger().info("O Papel Debaixo da Cama - add-on disabled.");
    }
}
